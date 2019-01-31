feature 'delete' do
  scenario "user can delete a bookmark" do
    visit '/bookmarks/add_bookmark'
    fill_in 'url', with: 'www.com'
    fill_in 'title', with: 'Test Website'
    click_button 'Submit'
    expect(page).to have_content 'Test Website'
    # click_button 'delete Test Website'
    find("[name='delete Test Website']").click
    expect(page).not_to have_content 'Test Website'
  end
end
