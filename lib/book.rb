class Book

    attr_reader :isbn, :genre, :title

    @@all = []

    def initialize (isbn, genre, title)
        @isbn = isbn
        @genre = genre
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def authors
        BookAuthor.all.select {|ba| ba.book == self}.map {|bookobject| bookobject.author.name}
    end
end