# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Album', type: :feature do

  before do
    user = create(:user)
  end

  scenario "user can upload a photo" do
    visit('/')
    click_link 'Log in'
    fill_in 'Email', with: 'John@example.com'
    fill_in 'Password', with: 'sosecure'
    click_button 'Log in'
    visit '/albums'
    click_link 'New Album'
    fill_in 'album_title', with: 'New album'
    attach_file("album[images][]", Rails.root + "spec/features/albums/image.png")
    click_button 'Create Album'
    expect(page).to have_content 'New album'
    # expect(page.find('.album')['src']).to have_content 'image.png'
  end

end
