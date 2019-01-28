require_relative '../../app.rb'

feature 'index ' do

  scenario "expect index page to have text" do
    visit("/")
    expect(page).to have_content("Hello World")
  end

end
