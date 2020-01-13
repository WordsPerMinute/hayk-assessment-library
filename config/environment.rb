require 'pry'
require 'require_all'

require_all 'lib'

#authors
rlstein = Author.new("RL Stein")
aa = Author.new("Airtight Aaron")
aiw = Author.new("Alice in Wonderland")

#books
book1 = Book.new("12345789", "thriller", "Say Cheese and Die!")
book2 = Book.new("12345790", "thriller", "Night of a Living Dummy")
book3 = Book.new("12345791", "nature", "Birdingwatching in Rino")

#BookAuthor
ba1 = BookAuthor.new(book1, rlstein)
ba2 = BookAuthor.new(book2, rlstein)
ba3 = BookAuthor.new(book3, aa)
ba4 = BookAuthor.new(book3, aiw)

binding.pry