class BloodOath

    @@all = []

    attr_reader :cult, :follower

    def initialize(cult:, follower:)
        @cult = cult
        @follower = follower
        @initiation_date = Time.new.to_s.split[0]
        save
    end

    def self.all
        @@all
    end

    def save
        unless BloodOath.all.find { |oath| oath.follower == self.follower && oath.cult == self.cult }
            @@all << self
        end 
    end

end