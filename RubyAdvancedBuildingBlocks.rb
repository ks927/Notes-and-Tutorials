def silly_check(number)
    if number < 5
        puts number is less than 5
    else
        puts number is greater than or equal to 5
    end
end

def more_fun(arr)
    arr[0] = "FUN FUN"
    return arr
end

def increment_variable(var)
    var += 1
end

snowy_owl = {
type: "bird",
diet: "carnivore",
life_span: "10 years"
}

result = []
first_names = ["Hamburglar", "Grimace", "Ronald"]
last_name = "McDonald"

first_names.each { |first| result.push(first + " " + last_name) }

personality_types = ["bad", "good", "great"]

personality_types.map { |type| type + " person" }

lebron = {:sport => "basketball", :birthplace => "Akron"}
lebron[:sport]
lebron[:highschool] = "st vincent st mary"

lebron = {:sport=>"basketball", :birthplace=>"Akron", :high_school=>"St. Vincent-St. Mary High School"}
lebron.keys()
lebron.values()

result = []
weird_array = ["blah", :meow, 42, 90, :building]
weird_array.each do |x|
    if x.is_a?Symbol
        result.push(x)
    end
end

sports = ["basketball", "baseball", "football"]
sports.each_with_index do |sport, index|
    index.to_s + ". " + sport
end

last_names = ["D", "Krugman"]
last_names.map { |name| "Paul " + name }

tools = ["ruby", "rspec", "rails"]
tools.each do |word|
    unless word[0] != r return true
end

captain_planet = ["earth", "fire", "wind", "water", "heart"]
captain_planet.select do |element|
    element.include?("a")
end

stuff = ["candy", :pepper, "wall", :ball, "wacky"]
stuff.find do |word|
    wor[0..1] == "wa"
end

stuff = ["candy", :pepper, "wall", :ball, "wacky"]
stuff.select do |word|
    word(0..1) == "wa"
end

abcs = [:a, :b, :c]
abcs.reverse()

people = [["Lebron", "cool dude"], ["Bieber", "jerk face"]]
people.each do |name, adj|
        name + "is a " + adj
    end
end

test_scores = [["jon", 99], ["sally", 65], ["bill", 85]]
test_scores.select do |name, score|
    score > 80
end

ages = [[:frank, 42], [:sue, 77], [:granny, 77]]
ages.find do |name, age|
    age == 77
end

baseball_players_array = [[:babe_ruth, [2873, 714, 474]], [:barry_bonds, [2935, 762, 444]]]

economists = [{:name => "krugman", :specialty => "international macro"}, {:name => "mankiw", :specialty => "pigovian taxation"}]
#economists[0][:name] = "krugman"

class Animal
end

fido = Animal.new()

class Dog

    def initialize(name)
        @name = name
    end

   def speak
      return("woof woof")
   end
end

spot = Dog.new('spot')
spot.speak()

class Penguin
    def looks
       return "we are cute!"
    end
end

class Calculator
   def self.add(num1, num2)
       num1 + num2
   end
end

Calculator.add(1, 1)

class Celsius
   def initialize(temp)
       @temp = temp
   end

    def to_fahrenheit
       @temp * 1.8 + 32
    end
end

module MathHelper
   def multiply_by_two(x)
      x * 2
   end

    def exponent(x, y)
       x**y
    end
end

class Homework
   include MathHelper
end

class Calculate
   include MathHelper

    def square_root(x)
        exponent(x, 0.5)
    end
end

my_hw = Homework.new
my_hw.multiply_by_two(4)

class BaseballPlayer

    def initialize(hits, walks, at_bats)
        @hits = hits
        @walks = walks
        @at_bats = at_bats
    end

    def batting_average
        @hits.to_f / @at_bats
    end

    def on_base_percentage
       (@hits + @walks).to_f / @at_bats
    end

end



