class CreateWorks < ActiveRecord::Migration[5.1]
  def change
    create_table :works do |t|
      t.string :name
      t.text :description
      t.string :languages
      t.string :link
      t.string :git
    end
  end
end
