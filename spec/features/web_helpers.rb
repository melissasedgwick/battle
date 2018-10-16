def sign_in_and_play
  visit('/')
  fill_in('name1', with: 'Athemis')
  fill_in('name2', with: 'Tolvic')
  click_button "Submit"
end
