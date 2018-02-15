# Counts words in the given file
# USAGE: $ruby word_counter.rb sample.txt to
FILENAME = ARGV[0]
WORD_TO_COUNT = ARGV[1]

def count_words
  # Read contents of file into a string
  contents = File.read(FILENAME)

  # Remove newlines and punctuation then convert string to lower case using regex
  contents = contents.gsub(/[^a-z0-9\s]/i, ' ')
  contents = contents.gsub(/\n/, ' ')
  contents.downcase!

  # Split string into words on white spaces
  words = contents.split(' ')

  # Count the number of times the word appears in the array
  count = words.count(WORD_TO_COUNT.downcase)

  puts "The word '#{WORD_TO_COUNT}' appears in #{FILENAME} #{count} times\n"
end

count_words