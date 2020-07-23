# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
paul = Viewer.new("Paul")
rock = Viewer.new("Rock")
tom = Viewer.new("Tom")



fastfive = Movie.new("Fastfive")
avatar = Movie.new("Avatar")
titanic = Movie.new("Titanic")



review1 = Review.new(rock, avatar, 5)
review2 = Review.new(rock, titanic, 4)
review3 = Review.new(tom, fastfive, 5)
review4 = Review.new(paul, titanic, 4)
review5 = Review.new(rock, avatar, 5)





# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
