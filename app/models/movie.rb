class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

#Movie#reviews
#returns an array of all the Review instances for the Movie.
  def reviews
    Review.all.select {|review|review.movie == self}
  end

#Movie#reviewers
#returns an array of all of the Viewer instances that reviewed the Movie.  
  def viewers
    reviews.collect {|review| review.viewer }.uniq
  end

#Movie#average_rating
#returns the average of all ratings for the Movie instance
#to average ratings, add all ratings together and divide by the total number of ratings.
  def average_rating
    average = reviews.collect {|review| review.rating }
    sum = 0
    average.each { |a| sum+=a }
    sum.to_f/average.size.to_f
  end

#Movie.highest_rated
#returns the Movie instance with the highest average rating.
  def highest_rated
    Movie.all.max_by{|movi| movi.average_rating}
  end
end


