require 'bookmark'

RSpec.describe Bookmark do

  describe '#all' do
    it 'returns a list of bookmarks' do
      bookmarks = Bookmark.all

      expect(bookmarks).to include("https://github.com/makersacademy/")
      expect(bookmarks).to include("https://github.com/brookewoolley")
      expect(bookmarks).to include("https://www.bbc.co.uk/")
    end
  end

end
