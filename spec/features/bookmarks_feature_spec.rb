require_relative '../../app.rb'

feature 'bookmarks' do

  scenario "expect there to be a bookmarks page" do
    visit("/bookmarks")
    expect(page).to have_content("Bookmarks")
    expect(page).to have_content("https://github.com/makersacademy/")
    expect(page).to have_content("https://github.com/brookewoolley")
    expect(page).to have_content("https://www.bbc.co.uk/")
  end

end
