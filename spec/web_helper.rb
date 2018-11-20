require 'spec_helper'

def add_user
  # visit '/signup'
  # fill_in 'Name', with: 'Test User'
  # fill_in 'Email', with: 'test@mail.com'
  # fill_in 'Password', with: 'Test123'
  # fill_in 'Password Confirmation', with: 'Test123'
  # click_button 'Create my account'
  user  = User.create(name: 'Test User', email: 'test@mail.com', password: 'Test123', password_confirmation: 'Test123')
  p User.all
end
