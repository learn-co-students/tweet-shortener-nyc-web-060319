# Write your code here.

def dictionary
   {
    "hello" => "hi",
    "to" =>  "2",
    "To" =>  "2",
    "two" => "2",
    "too" => '2', 
    "for" => "4",
    "For" => "4",
    "four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@" ,
    "and" => "&"
  }
end

# def word_substituter(tweet)
#   tweet_word_arr = tweet.split(" ")
  
#   x = tweet_word_arr.collect do |word|
#       if dictionary.keys.include?(word)
#         dictionary.collect do |term, abbrev|
#           if word == term
#             word = abbrev
#           end 
#         end
#       else
#       end
#   end

# x.flatten.compact.join(" ")
# end


def word_substituter(tweet)
    terms = dictionary.keys
    tweet_arr = tweet.split(" ")

    short_tweet = tweet_arr.collect do |word|
      if terms.include?(word)
        p "pass"
        dictionary[word]
      else
        word
      end
    end     
      short_tweet.join(" ")
end

def bulk_tweet_shortener(tweet_array)
  tweet_array.collect do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
    if tweet.length > 140
      word_substituter(tweet)
    else
      tweet
    end
end

def shortened_tweet_truncator(tweet)
  short_tweet = word_substituter(tweet)
  if short_tweet.length > 140
    short_tweet.slice(0, 137) << "..."
  else
    short_tweet
  end
end
