feature 'Viewing bookmarks' do
  scenario 'visting the index page' do
    visit('/')
    expect(page).to have_content "Bookmark Manager"
  end
end
