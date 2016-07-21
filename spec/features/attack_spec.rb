feature 'Attacking' do
  scenario 'attack Player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Joe attacked Oggie'
  end

  scenario 'attack Player 1' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'Ok'
    click_button 'Attack'
    expect(page).to have_content 'Oggie attacked Joe'
  end

  # scenario 'player 2 loses' do
  #   sign_in_and_play
  #   11.times do
  #     click_button 'Attack'
  #     click_button 'Ok'
  #   end
  #   expect(page).to have_content 'Oggie Loses'
  # end
end
