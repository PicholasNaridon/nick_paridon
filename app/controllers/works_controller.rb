class WorksController < ApplicationController
  def index
    @works = Work.all
  end

  def show
    @work = Work.find(params[:id])
  end

  def new
    @work = Work.new
  end

  def create
    @work = Work.new(work_params)
    if @work.save
      flash[:notice] = "Work created"
      redirect_to work_path(@work)
    else
      flash[:notice] = "Work not saved"
      render :new
    end
  end

  private

  def work_params
    params.require(:work).permit(:name)
  end
end
