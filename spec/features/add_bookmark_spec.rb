require 'pg'

require_relative './../../app.rb'

feature 'add_bookmark' do

  scenario "expect to be able to enter a link via a form" do
    visit("/bookmarks/add_bookmark")
    fill_in('url', with: 'https://www.theguardian.com/uk')
    fill_in('title', with: 'The Guardian')
    click_button("Submit")

    # visit '/bookmarks/'

    expect(page).to have_link('The Guardian', href: 'https://www.theguardian.com/uk')
  end


end
