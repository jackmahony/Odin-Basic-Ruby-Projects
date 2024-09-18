dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
input = gets.chomp

def substrings(word, dictionary)
  result = Hash.new(0) # Initialize the result hash with default value 0
  word.downcase.split.each do |word| # Downcase and split the sentence into words
    dictionary.each do |substring|
      if word.include?(substring) # Check if the word contains the dictionary substring
        result[substring] += 1 # Increment count for the substring in the result hash
      end
    end
  end
  result
end

p substrings(input, dictionary)