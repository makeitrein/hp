feature 'Home page' do
  describe 'Visit the home page' do
    visit root_path
    expect(page).to have_content("HPFic")
  end
end