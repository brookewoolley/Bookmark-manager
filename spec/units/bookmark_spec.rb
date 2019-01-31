require 'bookmark'
require 'database_helpers'

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
      expect(bookmarks.first.id).to eq bookmark.id
      expect(bookmarks.first.title).to eq 'Makers Academy'
      expect(bookmarks.first.url).to eq "http://www.makersacademy.com"
    end

  end

  describe '#add' do

    it 'adds a new bookmark' do
      bookmark = Bookmark.add(url: 'http://google.com', title: 'Google')
      persisted_data = persisted_data(id: bookmark.id)

      expect(bookmark).to be_a Bookmark
      expect(bookmark.id).to eq persisted_data.first['id']
      expect(bookmark.url).to eq 'http://google.com'
      expect(bookmark.title).to eq 'Google'
    end

  end

  describe '#delete' do

    it 'deletes a chosen bookmark' do
      Bookmark.add(url: 'http://google.com', title: 'Google')
      Bookmark.delete(id: 1)
      expect(Bookmark.all).to be_empty
    end

  end

end
