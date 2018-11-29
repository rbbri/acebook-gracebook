# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Album', type: :feature do

  before do
    user = create(:user)
  end

  scenario "user can upload a photo" do
    click_link 'Album'
    click_button 'Add new photo'
    attach_file("Upload Your File", Rails.root + "spec/fixtures/file.png")
    click_button 'Submit'
    expect(page).to have_content("spec/fixtures/file.png")
  end

end
