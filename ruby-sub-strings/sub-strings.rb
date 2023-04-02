def substrings(word, dictionary)
  substring = Hash.new
    word = word.scan(/\w+/)
    word.each do |item|
      substring[item] = dictionary.count(item) if dictionary.include?(item) || word == item
    end
  p substring
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit", "below"]
substrings("below", dictionary)
substrings("down go below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)

#Longer answer
#if word.include?(" ")
  # word = word.scan(/\w+/)
  # word.each do |item|
  #  substring[item] = dictionary.count(item) if dictionary.include?(item)
  # end
# else
  #dictionary.each do |item|
  #substring[word] = dictionary.count(word) if dictionary.include?(word) && item == word
  #end
#end
