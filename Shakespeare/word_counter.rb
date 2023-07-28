FILE_NAME = "./Shakespeare/romeo-juliet.txt"

#load the words from the file
def words_from_file(file_name)
  File.read(file_name).downcase.gsub(/[^a-z]/, " ").split
end

#load the list of words
words = words_from_file(FILE_NAME)
# puts words

#create a hash to store the word count
word_count = {}

#then we are going to iterate through the words
words.each do |word|
  if word_count[word]
    word_count[word] += 1
  else
    word_count[word] = 1
  end
end