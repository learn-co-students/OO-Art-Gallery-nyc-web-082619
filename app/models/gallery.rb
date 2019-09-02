class Gallery

  attr_reader :name, :city

  def initialize(name, city)
    @name = name
    @city = city
  end
  
  def paintings
    allPaintings = Painting.all.select { |painting| painting.gallery == self } 
  end
  
  def artists
    self.paintings.map { |painting| painting.artist }
  end
  
  def artist_name
    self.artists.map { |artist| artist.name }
  end
  
  def most_expensive_painting
    self.paintings.max_by { |painting| painting.price } 
  end
  
  def self.all 
    allGallery = Painting.all.map { |painting| painting.gallery }
    allGallery.uniq 
  end

end
