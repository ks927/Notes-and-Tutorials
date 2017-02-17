# RUBY AND THE INTERNET

=begin
require 'open-uri'

f = open('http://www.rubyinside.com/test.txt')

puts "the document is #{f.size} bytes in length"

f.each_line do |line|
    puts line
end


require 'open-uri'

# url = URI.parse('http://www.rubyinside.com/test.txt')
# url.open { |f| puts f.read }
f = open('http://www.rubyinside.com/test.txt')

puts f.content_type
puts f.charset
puts f.last_modified
=end

require 'rubygems'
require 'markaby'

m = Markaby::Builder.new
=begin
m.html do
    head { title 'This is the title' }
    
    body do
        h1 'Hello world'
        h2 'Sub-heading'
        p %q{This is a pile of stuff showing off Markaby's features}
        h2 'Another heading'
        p 'Markaby is good at:'
        ul do
            li 'Gnerating HTML from Ruby'
            li 'Keeping HTML structured'
            li 'lots more...'
        end
    end
end
puts m
=end
items = ['Bread', 'Butter', 'Tea', 'Coffee']

m.html do
    body do
        h1 'My Shopping List'
        ol do
            items. each do |item|
                li item
            end
        end
    end
end
puts m