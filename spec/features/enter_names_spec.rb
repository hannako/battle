feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Ogi'
    fill_in :player_2_name, with: 'Robert'
    click_button 'Submit'
    expect(page).to have_content 'Ogi vs Robert'
  end
end
