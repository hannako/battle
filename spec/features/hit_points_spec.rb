feature 'See Player 2 hit points' do
  scenario 'show hit points of rival' do
    sign_in_and_play
    expect(page).to have_content "Oggie: 50HP"
  end
end
