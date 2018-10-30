require './lib/app'

feature 'Viewing bookmarks' do
  scenario 'visit index page' do
    visit ('/')
    expect(page).to have_content "Bookmark Manager"
  end
end
