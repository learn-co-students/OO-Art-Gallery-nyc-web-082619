class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end


  def my_paintings
    Painting.all.select {|painting|painting.artist == self}
  end

  def paintings 
    my_paintings.map{|painting|painting.title}
  end

  def galleries
    my_paintings.map{|painting|painting.gallery}
  end

   def cities
    galleries.map {|painting|painting.city}
   end

   def create_painting(title, price, gallery) 
    Painting.new(title, price, gallery, self)
   end

  def total_experience(years_experience)
    self.all.reduce(0) do |sum, artist|
      sum + artist.years_experience
    end
  end

  def self.all
    @@all
  end

  def self.most_prolific
    @@all.max_by{|artist|artist.my_paintings.length/artist.years_experience}
  end

  




end
