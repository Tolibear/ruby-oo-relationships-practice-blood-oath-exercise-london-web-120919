class Cult

    @@all = []

    attr_reader :name
    attr_accessor :location, :slogan, :founding_year

    def initialize (name:)
        @name = name
        @location
        @founding_year
        @slogan
        @@all << self
    end

    def self.all
        @@all
    end

    def recruit_follower(follower)
        BloodOath.new(follower: follower, cult: self)
    end

    def cult_population
        BloodOath.all.select { |oath| oath.cult == self }.count
    end

    def self.find_by_name(name)
        self.all.find { |cult| cult.name == name }
    end
    
    def self.find_by_location(location)
        self.all.select { |cult| cult.location == location }
    end

    def self.find_by_founding_year(year)
        self.all.select { |cult| cult.founding_year == year }
    end

    def followers
        BloodOath.all.map { |oath| oath.follower if oath.cult == self }.compact
    end

    def average_age
        ages = self.followers.map { |follower| follower.age.to_f }
        (ages.sum) / ages.length
    end

    def my_followers_mottos
        self.followers.each { |follower| puts follower.life_motto }
    end

    def self.least_popular
        self.all.min_by { |cult| cult.cult_population }
    end

    def self.most_common_location
        locations = self.all.map { |cult| cult.location }
        locations.max_by { |place| locations.count(place) }
    end

end