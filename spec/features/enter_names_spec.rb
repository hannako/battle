require 'spec_helper'

feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Jess'
    fill_in :player_2_name, with: 'Sam'
    click_button 'Submit'
    expect(page).to have_content 'Jess vs. Sam'
  end
end
