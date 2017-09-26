require 'rails_helper'

feature "Sign up" do

  scenario 'specifying valid and required information' do
    visit root_path
    click_link 'Sign up'
    fill_in 'Email', with: 'test@test.com'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'
    click_button 'Sign up'

    expect(page).to have_content("Welcome! You have signed up successfully.")
    expect(page).to have_content("Logout")
  end

  scenario 'Sign up with taken email' do
    visit root_path
    click_link 'Sign up'
    fill_in 'Email', with: 'test@test.com'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'
    click_button 'Sign up'
    click_link 'Logout'
    click_link 'Sign up'
    fill_in 'Email', with: 'test@test.com'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password1'
    click_button 'Sign up'

    expect(page).to have_content("Email has already been taken")
    expect(page).to have_content("Password confirmation doesn't match Password")
    expect(page).to_not have_content("Welcome! You have signed up successfully.")
    expect(page).to_not have_content("Logout")

  end
end
