class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience

    @@all << self
  end

  def self.all
    @@all
  end 

  def my_painting
    Painting.all.select {|painting| painting.artist == self}
  end 

  def paintings
    my_painting
  end 

  def galleries
    my_painting.map {|painting| painting.gallery}
  end 

  def cities
   galleries.map {|gallery| gallery.city}
  end 

  def self.total_experience
    total_arr = self.all.map {|artist| artist.years_experience}
    total_arr.inject { |memo, n| memo + n }
  end 

  def create_painting(title, price, gallery)
    Painting.new("new paint", 4352, self, g5)
  end 

end
