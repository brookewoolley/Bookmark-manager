require_relative '../../app.rb'

feature 'bookmarks' do

  scenario "expect there to be a bookmarks page" do
    visit("/bookmarks")
    expect(page).to have_content("Bookmarks")
  end

end
