feature 'Entering names' do
  scenario 'Should allow two players to enter names and returns names' do
    visit('/')
    fill_in('name1', with: 'Athemis')
    fill_in('name2', with: 'Tolvic')
    click_button "Submit"
    expect(page).to have_content "Player 1 name: Athemis\nPlayer 2 name: Tolvic"
  end
end
