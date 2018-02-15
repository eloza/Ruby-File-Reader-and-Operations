# Changes words found in the file to a new word
# USAGE: $word_changer sample.txt fish fishes
FILENAME = ARGV[0]
WORD_TO_CHANGE = ARGV[1]
NEW_WORD = ARGV[2]

def change_words
  contents = File.read(FILENAME)
  # "\b" is for word boundaries, skips words within words
  contents = contents.gsub(Regexp.new('\b'+WORD_TO_CHANGE+'\b'), NEW_WORD)
  # Write to the file
  File.open(FILENAME, "w") do |f|
    f << contents
  end
end

change_words