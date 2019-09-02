require_relative '../config/environment.rb'

kevin = Artist.new("Kevin", 23)
karma = Artist.new("Karma", 10)
tenzin = Artist.new("Tenzin", 7)

sidePoint = Gallery.new("Side Point", "New York City")
fiveStarStudio = Gallery.new("Five Star Studio", "L.A.")
feelIt = Gallery.new("Feel IT", "Boston")

kevin.create_painting("NYC subway",30200,sidePoint)
kevin.create_painting("Top of World", 1500,fiveStarStudio)
karma.create_painting("Two side", 1000000,feelIt)
tenzin.create_painting("Himalayas", 55000,sidePoint)



binding.pry

puts "Bob Ross rules."
