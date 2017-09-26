require 'rails_helper'

feature "Welcome Page" do

  scenario 'visit root' do
    visit root_path

    expect(page).to have_content("Sign up")
    expect(page).to have_content("Login")
  end
end
