require_relative '../../app.rb'

feature 'bookmarks' do

  scenario "expect there to be a bookmarks page" do
    visit("/bookmarks")
    expect(page).to have_content("Bookmarks")
    expect(page).to have_content("http://www.makersacademy.com")
    expect(page).to have_content("http://www.destroyallsoftware.com")
    expect(page).to have_content("http://www.google.com")
  end

end
