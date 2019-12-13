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

    def self.of_a_certain_age(age)
        self.all.select { |person| person.age >= age }
    end

end