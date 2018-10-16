feature 'Entering names' do

  before :each do
    visit('/')
    fill_in('name1', with: 'Athemis')
    fill_in('name2', with: 'Tolvic')
    click_button "Submit"
  end

  scenario 'Should allow two players to enter names and shows player 1 name' do
    expect(page).to have_content "Player 1 name: Athemis"
  end

  scenario 'Should allow two players to enter names and shows player 2 name' do
    expect(page).to have_content "Player 2 name: Tolvic"
  end
end

feature 'Showing player hit points' do

  before :each do
    visit('/play')
  end

  scenario 'Should show hit points for player 1' do
    section = find_by_id('player_1_hp')
    expect(section).to have_text "100/100 hp"
  end

  scenario 'Should show hit points for player 2' do
    section = find_by_id('player_2_hp')
    expect(section).to have_text "100/100 hp"
  end

end
