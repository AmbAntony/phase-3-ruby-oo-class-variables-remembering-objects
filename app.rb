require 'pry'

#app that keeps track of all songs a user enters and allow our user to browse through their existing songs.

class Song
    @@all = []
    attr_accessor  :name

    def initialize(name)
        @name=name
        @@all<<self
    end
     
    def self.all
        @@all
    end

    def self.print
        self.all.each do |song|
        puts song.name
        end
    end
end

ninety_nine_problems = Song.new("99 Problems")
thriller = Song.new("Thriller")

binding.pry