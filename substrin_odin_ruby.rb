# An Array
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]



def substrings(word, dictionary)
    substrings_count = Hash.new(0)
  
    words = word.downcase.split(" ")
  
    # Iterate over each word
    words.each do |w|
      dictionary.each do |substring|
        if w.include?(substring)
          substrings_count[substring] += 1
        end
      end
    end
  
    # Return the final hash
    return substrings_count
  end
  

puts substrings("below", dictionary)
 
puts substrings("Howdy partner, sit down! How's it going?", dictionary)