FILE_NAME = "./Shakespeare/romeo-juliet.txt"

#load the words from the file
def words_from_file(file_name)
  begin # you can omit begin and end if you want just use rescue
    File.read(file_name).downcase.gsub(/[^a-z]/, " ").split
  rescue
    puts "Could not open #{file_name}"
    exit
  end
end

#load the list of words
words = words_from_file(FILE_NAME)
# puts words

#create a hash to store the word count
WORD_COUNT = {}

#then we are going to iterate through the words
words.each do |word|
=begin
  if WORD_COUNT[word]
    WORD_COUNT[word] += 1
  else
    WORD_COUNT[word] = 1
  end
=end
  WORD_COUNT[word] = 0 unless WORD_COUNT[word]
  WORD_COUNT[word] += 1
end

#sort by count and reverse it
WORD_COUNT.sort_by {|word, count| count}
          .reverse[0...20]
          .each {|word, count| puts "#{word}: #{count}"}

