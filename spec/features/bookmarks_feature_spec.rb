require 'pg'

require_relative './../../app.rb'

feature 'index' do

  scenario "expect there to be a bookmarks page" do

    Bookmark.add(url: "http://www.makersacademy.com", title: 'Makers Academy')
    Bookmark.add(url: "http://www.destroyallsoftware.com", title: 'Destroy all Software')
    Bookmark.add(url: "http://www.google.com", title: 'Google')

    visit("/bookmarks/")
    expect(page).to have_link('Makers Academy', href: "http://www.makersacademy.com")
    expect(page).to have_link('Destroy all Software', href: "http://www.destroyallsoftware.com")
    expect(page).to have_link('Google', href: "http://www.google.com")
  end

end
