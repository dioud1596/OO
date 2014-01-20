class Restaurant

  attr_reader :name, :address, :type_of_food, :avg_rating, :number_of_ratings

  @@number_of_ratings = 0

  def initialize(name, address, type_of_food)
    @name = name
    @address = address
    @type_of_food = type_of_food
    @ratings_array = []
  end

  def rate(rating)
    @ratings_array << rating
    @@number_of_ratings += 1
    # Arithmetic method
    @avg_rating = (@ratings_array.inject(:+).to_f / @ratings_array.size).round(2)
  end

  def self.number_of_ratings
    @@number_of_ratings
  end

end


# TESTS

chinese = Restaurant.new("Chinese Restaurant", "Rue du Nil", "Chinese")
jap = Restaurant.new("Japanese Restaurant", "Rue du Nil", "Jap")

chinese.rate(5)
chinese.rate(4)
chinese.rate(1)

jap.rate(4)
jap.rate(2)
jap.rate(1)

jap.rate(4)
jap.rate(2)
jap.rate(1)


puts chinese.avg_rating
puts jap.avg_rating

puts Restaurant.number_of_ratings
# puts chinese.number_of_ratings

# puts chinese.number_of_ratings


