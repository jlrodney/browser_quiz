
feature 'Viewing page' do
  scenario 'User inputs name and is greeted' do
    visit('/')
    click_button '1 Player'
    fill_in :name, with: 'Jamie'
    click_button 'Submit'
    expect(page).to have_content "Welcome Jamie!"
  end
end
