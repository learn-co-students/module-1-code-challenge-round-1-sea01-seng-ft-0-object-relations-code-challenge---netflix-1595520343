class Review
    attr_reader :rating
    attr_accessor :viewer, :movie
    @@all = []
        
        
    def initialize(viewer, movie, rating)
    @viewer = viewer
    @movie = movie
    @rating = rating
    @@all << self
    end
    
    def self.all
        @@all
    end
    
end
