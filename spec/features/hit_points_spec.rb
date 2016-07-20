feature 'See Player 2 hit points' do
  scenario 'show hit points of rival' do
    visit('/')
    fill_in :player_1_name, with: 'Joe'
    fill_in :player_2_name, with: 'Oggie'
    click_button 'Submit'
    expect(page).to have_content "Oggie: 50HP"
  end
end
