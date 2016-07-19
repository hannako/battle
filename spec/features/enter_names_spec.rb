# require "capybara"
# require "selenium-webdriver"
# include Capybara::DSL
require 'spec_helper'

feature 'Enter names', :type => :feature do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_name, with: 'Dave'
    # fill_in :player_2_name, with: 'Mittens'
    click_button 'Submit'
    expect(page).to have_content 'Dave'
  end
end
