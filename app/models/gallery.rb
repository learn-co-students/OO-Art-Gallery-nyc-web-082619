class Gallery

  @@all = []

  attr_reader :name, :city

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def my_paintings
    Painting.all.select {|painting|painting.gallery == self}
  end

  def paintings 
    my_paintings.map{|painting|painting.title}
  end

  def artists
    my_paintings.map{|painting|painting.artist}
  end

  def artist_name
    artists.map{|artist|artist.name}
  end

  def most_expensive_painting
    my_paintings.max_by{|painting|painting.price}
  end


end
