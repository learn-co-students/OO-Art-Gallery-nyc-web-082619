class Artist

  attr_reader :name, :years_experience

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
  end
  
  def paintings 
    Painting.all.select { |painting| painting.artist == self } 
  end
  
  def galleries
    self.paintings.map { |painting| painting.gallery }
  end
  
  def cities 
    self.galleries.map { |gallery| gallery.city }
  end
  
  def create_painting(title,price,gallery)
    Painting.new(title,price,gallery,self)
  end
  
  def self.total_experience
    allArtist = Painting.all.map { |painting| painting.artist }
    allArtist = allArtist.uniq
    allExp = allArtist.map { |artist| artist.years_experience }
    allExp.sum 
  end
  
  def self.most_prolific
    allArtist = Painting.all.map { |painting| painting.artist }
    allArtist.max_by { |artist| artist.years_experience }
  end
  
  def self.all 
    Painting.all.map { |painting| painting.artist } 
  end
  
  

end
