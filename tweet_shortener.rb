def dictionary
hash = {
"hello" => 'hi',
"to" => '2',
"two" => '2',
"too" => '2',
"for" => '4',
"four" => '4',
'be' => 'b',
'you' => 'u',
"at" => "@",
"and" => "&"
}
end

def word_substituter(tweet)
array = tweet.split(" ")
new_array = []
array.each do |word|
  if dictionary.keys.include?(word.downcase)
    new_array << dictionary[word]
  else
    new_array << word
end
end
new_tweet = new_array.join(" ")
new_tweet
end

def bulk_tweet_shortener(tweets)
tweets.each do |tweet|
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
short = word_substituter(tweet)
  if short.length > 140
    short = short[0..136] + "..."
  else
    short
  end
end
