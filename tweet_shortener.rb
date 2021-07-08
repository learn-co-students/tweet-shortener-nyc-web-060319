def dictionary
  {'hello' => 'hi',
   'to' => '2',
   'too' => '2',
   'two' => '2',
   'for' => '4',
   'four' => '4',
   'be' => 'b',
   'you' => 'u',
   'at' => '@',
   'and' => '&'
  }
end

def word_substituter(tweet)
  dict = dictionary
  key_arr = dict.keys
  arr = tweet.split
  new_arr = arr.map do |word|
    if key_arr.include?(word.downcase)
      dict[word.downcase]
    else
      word
    end
  end
  new_arr.join(" ")
end

def bulk_tweet_shortener(tweet_arr)
  tweet_arr.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length <= 140
    return tweet
  end
  return word_substituter(tweet)
end

def shortened_tweet_truncator(tweet)
  new_tweet = word_substituter(tweet)
  if new_tweet.size <= 140
    return new_tweet
  end
  "#{tweet[0...137]}..."
end
