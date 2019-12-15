require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

scientology = Cult.new(name: "scientology")
scientology.location = "everywhere"
scientology.founding_year = 1930
scientology.slogan = "We are not a cult"

tom = Follower.new(name: "Tom")
katie = Follower.new(name: "Katie")
suri = Follower.new(name: "Suri")

tom.age = 50
katie.age = 40
suri.age = 8

tom.life_motto = "I'm actually 6 feet tall"
katie.life_motto = "Thank god I got out when I could"
suri.life_motto = "I'm going to be a so mesed up"

scientology.recruit_follower(tom)
scientology.recruit_follower(katie)
scientology.recruit_follower(suri)

tom.join_cult(scientology)
suri.join_cult(scientology)
katie.join_cult(scientology)

manson = Cult.new(name: "manson")
manson.location = "hollywood"
manson.founding_year = 1970
manson.slogan = "Charles Manson is Jesus"

charles = Follower.new(name: "Charles")
charles.age = 40
charles.life_motto = "I am god"

charles.join_cult(manson)

puts "charles cults"
puts charles.cults

puts "sci followers"
puts scientology.followers

puts "all cults"
puts Cult.all
puts "all followers"
puts Follower.all

puts "average age"
puts scientology.average_age

puts "mottos"
manson.my_followers_mottos
scientology.my_followers_mottos
puts "least popular"
puts Cult.least_popular 

tom.join_cult(manson)

knights = Cult.new(name: "Knights Templar")
knights.location = "everywhere"

puts "top location"
puts Cult.most_common_location
puts "most active"
puts Follower.most_active
puts "top ten"
puts Follower.top_ten
puts "first_oath"
puts BloodOath.first_oath

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
