feature 'See Player hit points' do

  scenario 'show hit points of player 1' do
    sign_in_and_play
    expect(page).to have_content "Joe: 60HP"
  end

  scenario 'show hit points of player 2' do
    sign_in_and_play
    expect(page).to have_content "Oggie: 60HP"
  end

  scenario 'after an attack, reduce hit points of oponent' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'Ok'
    expect(page).to have_content "Oggie: 50HP"
    expect(page).not_to have_content "Joe: 50HP"
  end



end
