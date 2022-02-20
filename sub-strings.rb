def substrings(words, dictionary)

  result = Hash.new(0)

  words = words.split(" ")

  dictionary.each do |dict_word|
    words.each do |text_word|
      result[dict_word] += 1 if text_word.include? dict_word 
    end
  end

  result
end



dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)