require 'pry'
# Write your code here.

def dictionary
  {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => '4',
    "be" => 'b',
    "you" => 'u',
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  tweetArray = tweet.split.collect do |word|
    # binding.pry
    # array 
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
      # binding.pry
    else
      word
    end
  end
  tweetArray.join(" ")
  # string
end


def bulk_tweet_shortener(tweets)
  tweets.collect do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
    # tweetArray = tweet.split.count
    tweetArray = tweet.length
    #binding.pry
  if tweetArray > 140
    word_substituter(tweet)
  else 
    tweet
  end
end


def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).length > 140
    word_substituter(tweet)[0..136] + ("...")
  else
    word_substituter(tweet)
  end
end

