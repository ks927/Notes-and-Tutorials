
# Beginning Ruby Chapter 4
=begin
text = ''
line_count = 0
File.open("text.txt").each do  |line|
    line_count += 1
    text << line
end
puts "#{line_count} lines"


stop_words = %w{the a by on for of are with just but and to the my I has some in}
lines = File.readlines("text.txt")
line_count = lines.size
text = lines.join

# Character count
character_count = text.length
character_count_no_spaces = text.gsub(/\s+/, '').length

# Count words, sentences, paragraphs
word_count = text.split.length
sentence_count = text.split(/\.|\?|!/).length
paragraph_count = text.split(/\n\n/).length

# Make list of words that aren't stop words
# count them, make out percentage of non-stop
# words against all words

all_words = text.scan(/\w+/)
good_words = all_words.select{ |word| !stop_words.include?(word) }
good_percentage = ((good_words.length.to_f / all_words.length.to_f) * 100).to_i

# Summarize the text by cherry picking some choice sentences
sentences = text.gsub(/\s+/, ' ').strip.split(/\.|\?|\!/)
sentences_sorted = sentences.sort_by { |sentence| sentence.length }
one_third = sentences_sorted.length / 3
ideal_sentences = sentences_sorted.slice(one_third, one_third + 1)
ideal_sentences = ideal_sentences.select { |sentence| sentence =~ /is|are/ }
puts ideal_sentences.join(". ")


# Output analysis to user
puts "#{line_count} lines"
puts "#{character_count} characters"
puts "#{character_count_no_spaces} characters excluding spaces"
puts "#{word_count} words"
puts "#{sentence_count} sentences"
puts "#{paragraph_count} paragraphs"
puts "#{sentence_count / paragraph_count} sentences per paragraph (average)"
puts "#{word_count / sentence_count} words per sentence (average)"
puts "#{good_percentage}% of words are non-fluff words"
puts "Summary:\n\n" + ideal_sentences.join(". ")
puts "-- End of analysis"


#Beginning Ruby Chapter 9

# READING FILES

 File.open("text.txt").each { |line| puts line }
 File.open("text.txt").each(',') { |line| puts line }
 File.open("text.txt").each_byte { |line| puts line }
 File.open('text.txt') do |f|
   2.times { puts f.gets(',') }
 end
puts File.open('text.txt').readlines.join('--')
File.open('text.txt') do |f|
    puts f.read(6)
end

f = File.open('text.txt')
puts f.pos
puts f.gets
puts f.pos

f = File.open('text.txt')
puts f.pos = 4
puts f.gets
puts f.pos

# OVERWRITING FILES

# creates new file with Timestamp
f = File.new('logfile.txt', 'a')
f.puts Time.now
f.close

# inserts 'this is a test' on second line
f = File.open('text.txt', 'r+')
puts f.gets
f.puts 'this is a test'
puts f.gets
f.close

f = File.open('text.txt', 'r+')
f.putc 'X'
f.close

f = File.open('text.txt', 'r+')
f.write '123456'
f.close


# DELETING AND RENAMING FILES

File.rename("text.txt", "text1.txt")
File.delete("text1.txt")

# Identical check
puts "they're identical!" if File.identical?("text.txt", "text1.txt")


# Seeking
# places in X 5 characters from end of the file
f = File.new('text1.txt', 'r+')
f.seek(-5, IO::SEEK_END)
f.putc 'X'
f.close


# Checking for existence
puts "it exists!" if File.exist?('text1.txt')
puts "it doesn't exists!" if !File.exist?('text.txt')

# Size (in bytes)
puts File.size('text1.txt')


# End of file
f = File.new('text1.txt', 'r')
catch(:end_of_file) do
    loop do
        throw :end_of_file if f.eof?
        puts f.gets
    end
end
f.close


# DIRECTORIES

# Navigating
Dir.chdir("/Users/kylecomputer")
puts Dir.pwd

 Dir.foreach("/Users/kylecomputer") do |entry|
   puts entry
 end


# Creating and Deleting

# Dir.mkdir("mynewdir")
Dir.delete("mynewdir")

# Temporary Directory Files

require 'tmpdir'
puts Dir.tmpdir


# glob
puts Dir.glob("Users/kylecomputer/*.{rb}").length
=end
















