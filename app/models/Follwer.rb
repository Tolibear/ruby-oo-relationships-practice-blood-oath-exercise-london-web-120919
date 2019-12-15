class Follower

    @@all = []

    attr_reader :name
    attr_accessor :age, :life_motto

    def initialize(name:)
        @name = name
        @age
        @life_motto
        @@all << self
    end

    def self.all
        @@all
    end

    def join_cult(cult)
        BloodOath.new(follower: self, cult: cult)
    end

    def cults
        BloodOath.all.map { |oath| oath.cult if oath.follower == self }.compact
    end

    def self.of_a_certain_age(age)
        self.all.select { |person| person.age >= age }
    end

    def my_cults_slogans
        self.cults.each { |cult| puts cult.slogan }
    end

    def self.most_active
        followers = BloodOath.all.map { |oath| oath.follower }
        followers.max_by { |person| followers.count(person) }
    end

    def self.top_ten
        followers = BloodOath.all.map { |oath| oath.follower }
        followers.max_by(10) { |person| followers.count(person) }
    end

end