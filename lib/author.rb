class Author

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def books
        BookAuthor.all.select {|ba| ba.author == self}.map {|bookobject| bookobject.book.title}
    end
end