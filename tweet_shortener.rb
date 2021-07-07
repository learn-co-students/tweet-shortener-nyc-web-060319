def dictionary
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
	tweet_array = tweet.split #splits tweet into array of individual words to allow for iteration
	tweet_array.map do |word| #iterate through tweet
		if dictionary.keys.include?(word.downcase) #checks keys in the dictionary against words in the tweet
			word = dictionary[word.downcase]
		else
			word
		end
	end.join(" ")
end


def bulk_tweet_shortener(tweets)
	tweets.collect do |tweet|
		puts word_substituter(tweet)
	end
end

def selective_tweet_shortener(tweets)
	if tweets.length > 140
		word_substituter(tweets)
	else
		tweets
	end
end

def shortened_tweet_truncator(tweets)
	if selective_tweet_shortener(tweets).length > 140
		return "#{tweets[0..136]}..."
	else
		tweets
	end
end


# Write your code here.