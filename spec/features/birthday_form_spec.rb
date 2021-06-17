feature 'Birthday form' do
  scenario 'enter name' do
    visit '/'
    fill_in 'name', with: 'Buffy'
    click_button 'Submit'
    expect(page).to have_content 'Buffy'
  end
end