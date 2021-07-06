def dictionary
  hash = {hello: "hi", to: "2", two: "2", too:"2", for:"4", four:"4",
  be:"b", you:"u", at:"@", and:"&"}
  return hash
end

def word_substituter(string)
  array = string.split(" ")
  subs = dictionary
  keys = subs.keys
  keys.each do |key|
    array.each_with_index do |word, index|
      if key.to_s == word
        array[index] = subs[key]
      elsif key.to_s.capitalize == word
        array[index] = subs[key].capitalize
      end
    end
  end
  return array.join(" ")
end

def bulk_tweet_shortener(array)
  array.each do |sentence|
    puts word_substituter(sentence)
  end
end

def selective_tweet_shortener(string)
  if string.length > 140
    return word_substituter(string)
  else
    return string
  end
end

def shortened_tweet_truncator(string)
  string = selective_tweet_shortener(string)
  if string.length > 140
    string = string[0..136]  + "..."
  end
  return string
end


# sentence = "Hey guys, can anyone teach me how to be cool?
# I really want to be the best at everything, you know what I mean?
#  Tweeting is super fun you guys!!!!"
#
# word_substituter(sentence)
