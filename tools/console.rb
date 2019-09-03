require_relative '../config/environment.rb'


a1 = Artist.new("Tim", 3)
a2 = Artist.new("Bob", 5)
a3 = Artist.new("Justin", 30)


g1 = Gallery.new("Beutiful", "Manhattan")
g2 = Gallery.new("Wow", "LA")
g3 = Gallery.new("so preety", "Atlantic city")
g4 = Gallery.new("love it", "Tel Aviv")
g5 = Gallery.new("stay away", "Mosscow")


p1 = Painting.new("bad morning", 2316, a1, g1)
p2 = Painting.new("sunshine", 6243, a2, g3)
p3 = Painting.new("another day", 6473, a3, g2)
p4 = Painting.new("did it", 5473, a3, g5)


binding.pry

puts "Bob Ross rules."
