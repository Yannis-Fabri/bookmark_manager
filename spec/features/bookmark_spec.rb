require './lib/bookmark'

describe Bookmark do
  describe '.all' do
    it 'shows all bookmarks' do
      book = Bookmark.all
      expect(page).to include "https://www.makersacademy.com"
      expect(page).to include "https://www.github.com"
    end
  end
end
