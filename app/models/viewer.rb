class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end
  
  #Viewer#reviews
#returns an array of Review instances associated with the Viewer instance.
  def reviews
    Review.all.select {|review| review.viewer == self}
  end

#Viewer#reviewed_movies
#returns an array of Movie instances reviewed by the Viewer instance.  
  def reviewed_movies
      reviews.map {|review| review.movie }
  end

#Viewer#reviewed_movie?(movie)
#a Movie instance is the only argument
#returns true if the Viewer has reviewed this Movie 
#(if there is a Review instance that has this Viewer and Movie), 
#returns false otherwise
  def reviewed_movie?(movie)
    reviewed_movies.include?(movie)
  end
  

#Viewer#rate_movie(movie, rating)
#a Movie instance and a rating (number) are passed in as arguments
#if the Viewer instance and the passed Movie instance are not already associated, 
#  this method should create a new Review instance
#if this Viewer has already reviewed this Movie, 
#  assigns the new rating to the existing Review instance

  def rate_movie(movie, rating)
    Review.new(self,movie,rating)
  end
end
