=begin
puts 1+2
puts 9/2
puts 365 * 24
puts (60*24) * 7
puts 1.0 + 2.0
puts 9.0 / 2.0

puts 'i like ' + 'apple pie'
puts 'kyle' * 4
puts 'You\'re swell'


my_string = 'this is a string'
puts my_string
puts my_string
puts 'this is ' + my_string


#Conversions
var1 = 2
var2 = '5'
puts var1.to_s + var2 #25
#to_i gives the integer, to_f gives float
#exercises
puts 'what\'s your first name?'
first_name = gets.chomp
puts 'what\'s your middle name?'
middle_name = gets.chomp
puts 'what\'s your last name?'
last_name = gets.chomp
puts 'your full name is ' + first_name + middle_name + last_name + '!'


#String methods
#exercises
puts "What's your full name"
name = gets.chomp 
puts "did you know there are " + name.length.to_s + " characters in " + name + "?"


lineWidth = 40
str = '--> text <--'
puts str.ljust lineWidth
puts str.center lineWidth
puts str.rjust lineWidth
puts str.ljust(lineWidth/2) + str.rjust(lineWidth/2)


#exercises
puts "What do you want?!"
reply = gets.chomp
puts "WHADDAYA MEAN " + ' ' + reply.upcase + '' + "?! YOU'RE FIRED!!"

lineWidth = 50
puts "Table of Contents".center(lineWidth)
puts "Chapter 1:  Numbers".ljust(lineWidth/2) + "page 1".rjust(lineWidth/2)
etc.


#Arithmetic operators
puts 5**2 #5 squared
puts 5**0.5 #square roots
puts 365%7 #remainder

#absolute
puts((5-2).abs)
puts((2-5).abs)

#Random number generator
puts rand
puts rand
puts rand(5)
puts rand(100)

srand 1945
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts ''
srand 1945
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))


#Flow Control exercises
bottles = 99
while bottles != 97
puts bottles.to_s + " Bottles of beer on the wall " + bottles.to_s + " bottles of beer, take one down pass it around " + bottles.to_s + " bottles of beer on the wall"
    bottles = bottles -= 1
    end

puts "hello dear"
reply = gets.chomp
while reply != "BYE!"
    reply = gets.chomp
    while reply != reply.upcase
      puts "HUH SPEAK UP"
        reply = gets.chomp
  end
    while reply.upcase
       puts "NO NOT SINCE 1938"
        reply = gets.chomp
    end
end
puts "GOODBYE!"


#Arrays
languages = ['English', 'German', 'Ruby']
languages.each do |lang|
    puts "I love " + lang
end

puts "type in as many words as you want"
words = "0"
arr = []
while words != ""
    words = gets.chomp
    arr.push words
end
    puts "displaying sorted words"
puts arr.sort


toC = ["Table of Contents", "Chapter 1: Numbers", "page 1", "Chapter 2: Letters", "Page 72"]
lineWidth = 50
puts toC[0].center(lineWidth)
puts toC[1].ljust(lineWidth/2) + toC[2].rjust(lineWidth/2)
puts toC[3].ljust(lineWidth/2) + toC[4].rjust(lineWidth/2)


#Methods
def ask question
    goodAnswer = false
    while(not goodAnswer)
        puts question
        reply = gets.chomp.downcase
        
        if (reply == 'yes' or reply == 'no')
            goodAnswer = true
            if reply == 'yes'
                answer = true
                else
                answer = false
            end
        else
            puts 'Please answer "yes" or "no".'
        end
    end
    
    answer #this is what we return (true or false)
end

def lotr question
    puts question
    reply = gets.chomp.downcase
    if reply == "no"
        answer = false
        else 
        answer = true
    end
    answer
end

puts "hello there I have a few questions.."
puts
lotr "Do you like lotr?"
lotr "are you fond of the elves"
lotr "do you like the movies?"
myfriend = lotr "have you read the books"
puts "just calibrating your answers here.."
puts
puts myfriend

    
#Classes
time = Time.new
time1 = Time.mktime(1990, 9, 27, 7, 27)
puts time
puts time1
puts time - time1
time2 = Time.mktime(1994, 4, 11, 11, 32)
puts time - time2


#Creating classes
class Die
    def roll
        1 + rand(6)
    end
end

#Make a couple of dice
dice = [Die.new, Die.new]

#roll em
dice.each do |die|
    puts die.roll
end

 class Die
     
     def initialize
    #initialize is always called when an object is created, if it has one created     
         roll
     end
     
     def roll
         @numberShowing = 1 + rand(6)
     end
     
     def showing
         @numberShowing
     end
     
     def cheat(num)
        if(num <= 0 or num > 6)
        puts "choose a number between 0 and 6"
        else
        puts num
        end
     end
     
 end
    
puts Die.new.showing
puts Die.new.cheat(4)

    
class Dragon
    
    def initialize name
        @name = name
        @asleep = false
        @stuffInBelly = 10 #he's full
        @stuffInIntestine = 0 #he doesn't need to go
        
        puts @name + ' is born.'
    end
    
    def feed
        puts 'You feed ' + @name + '.'
        @stuffInBelly = 10
        passageOfTime
    end
    
    def walk
        puts 'You walk ' + @name + '.'
        @stuffInIntestine = 0
        passageOfTime
    end
    
    def putToBed
        puts 'You put ' + @name + ' to bed.'
        @asleep = true
        3.times do
            if @asleep
                passageOfTime
            end
            if @asleep
                puts @name + ' snores, filling the room with smoke.'
            end
        end
        if @asleep
            @asleep = false
            puts @name + ' wakes up slowly.'
        end
    end
    
    def toss
    puts 'You toss ' + @name + ' up into the air.'
    puts 'He giggles, which singes your eyebrows.'
    passageOfTime
  end

  def rock
    puts 'You rock ' + @name + ' gently.'
    @asleep = true
    puts 'He briefly dozes off...'
    passageOfTime
    if @asleep
      @asleep = false
      puts '...but wakes when you stop.'
    end
  end
 
    private
    #methods here are internal to the object
    
    def hungry?
        #methods ending with ? usually return ture or false
        @stuffInBelly <= 2
    end
    
    def poopy?
    @stuffInIntestine >= 8
  end

  def passageOfTime
    if @stuffInBelly > 0
      # Move food from belly to intestine.
      @stuffInBelly     = @stuffInBelly     - 1
      @stuffInIntestine = @stuffInIntestine + 1
    else  # Our dragon is starving!
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts @name + ' is starving!  In desperation, he ate YOU!'
      exit  # This quits the program.
    end

    if @stuffInIntestine >= 10
      @stuffInIntestine = 0
      puts 'Whoops!  ' + @name + ' had an accident...'
    end

    if hungry?
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts @name + '\'s stomach grumbles...'
    end

    if poopy?
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts @name + ' does the potty dance...'
    end
  end

end

pet = Dragon.new 'Smaug'
pet.feed
pet.toss
pet.walk
pet.putToBed
pet.rock
pet.putToBed


class OrangeTree
    
    def initialize
        @age = 0
        @orangeCount = 0
        @height = 0
        puts "An orange tree is planted."
    end
    
    def height
        puts "Tree is " + @height.to_s + " feet tall." 
    end
    
    def oneYearPasses
        puts "One year passes"
        @age = @age + 1
        @height = @height + 10
        
        if @age >= 3
            @orangeCount = @orangeCount + 1
        end
    end
    
    def countTheOranges
       puts "The tree has " + @orangeCount.to_s + " oranges!"
    end
    
    def pickAnOrange
        if @orangeCount > 0
        @orangeCount = @orangeCount - 1
        puts "What a delicious orange!"
            else
            puts "There are no oranges to pick this year"
        end
    end
end

tree = OrangeTree.new 
tree.oneYearPasses
tree.oneYearPasses
tree.oneYearPasses
tree.oneYearPasses
tree.height
tree.countTheOranges
tree.pickAnOrange


#Blocks and Procs
toast = Proc.new do
    puts 'Cheers!'
end

toast.call
toast.call


#they can take parameters
doYouLike = Proc.new do |aGoodThing|
    puts 'I really like '+aGoodThing+'!'
end

doYouLike.call 'chocolate'


#until statement
$i = 0
num = 5
until $i > num do
    puts "inside the loop i = #$i"
    $i += 1
end  

#until modifier

$i = 0
num = 5
begin 
    puts "inside the loop i = #$i"
    $i += 1
end until $i > 5
=end

#for loop
for i in 0..5
    puts "value of #{i}"
end
puts 
#break
for i in 0..5
    if i > 2
        break
    end
        puts "value of #{i}"
end
puts 
#next
for i in 0..5
    if i < 2
        next
    end
        puts "value of #{i}"
end
puts 



