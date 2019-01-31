
feature 'index' do

  scenario "expect index page to have text" do
    visit("/")
    expect(page).to have_content("Bookmark Manager")
  end

end
