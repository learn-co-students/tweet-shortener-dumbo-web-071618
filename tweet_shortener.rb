require "pry"

array_of_tweets = [
  "Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!",
  "OMG you guys, you won't believe how sweet my kitten is. My kitten is like super cuddly and too cute to be believed right?",
  "I'm running out of example tweets for you guys, which is weird, because I'm a writer and this is just writing and I tweet all day. For real, you guys. For real."
  ]
  
tweet1 = "Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!"

def dictionary 
  replacements = {
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

def word_substituter tweet
  replacements = dictionary
  tweet = tweet.split(' ')
  new_tweet = []
  
  tweet.each do |words|
    if replacements.has_key?(words.downcase) == true 
      words = replacements[words.downcase]
    end
    new_tweet << words
  end
  new_tweet.join(' ')
end

def bulk_tweet_shortener tweet_array
  new_tweet = ""
  tweet_array.each do |tweet|
    new_tweet = word_substituter(tweet)
    puts new_tweet
  end
end

def selective_tweet_shortener tweet 
  if tweet.size > 140
    tweet = tweet.slice(0,140)
  end
  tweet
end

def shortened_tweet_truncator tweet
  new_tweet = selective_tweet_shortener(word_substituter(tweet))
end

puts shortened_tweet_truncator tweet1