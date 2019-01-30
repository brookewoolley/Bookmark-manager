require 'bookmark'

RSpec.describe Bookmark do

  describe '#all' do
    it 'returns a list of bookmarks' do

      connection = PG.connect(dbname: 'bookmark_manager_test')

      bookmark = Bookmark.add(url: "http://www.makersacademy.com", title: 'Makers Academy')
      Bookmark.add(url: "http://www.destroyallsoftware.com", title: 'Destroy all Software')
      Bookmark.add(url: "http://www.google.com", title: 'Google')

      bookmarks = Bookmark.all

      expect(bookmarks.length).to eq 3
      expect(bookmarks.first).to be_a Bookmark
      expect(bookmarks.first.id).to eq bookmark.first['id']
      expect(bookmarks.first.title).to eq 'Makers Academy'
      expect(bookmarks.first.url).to eq "http://www.makersacademy.com"
    end

  end

  describe '#add' do

    it 'adds a new bookmark' do
      bookmark = Bookmark.add(url: 'http://google.com', title: 'Google').first

      expect(bookmark['url']).to eq 'http://google.com'
      expect(bookmark['title']).to eq 'Google'
    end

  end

end
