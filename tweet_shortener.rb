require 'pry'

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

def word_substituter (tweet)
  long_tweet_array = tweet.split(" ")
  keys_array = dictionary.keys
  index_of_word = -1

  long_tweet_array.each do |tweet_word|
    index_of_word += 1

    keys_array.each do |dictionary_word|
       if tweet_word == dictionary_word || tweet_word.downcase == dictionary_word
         new_word  = dictionary[dictionary_word]
         long_tweet_array[index_of_word] = new_word
        end
      end

    end

short_tweet_array = long_tweet_array.join(" ")
short_tweet_array

end

def bulk_tweet_shortener (tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener (tweet)
  if tweet.size > 140
    bulk_tweet_shortener (tweets)
  else
   tweet
  end
end

def shortened_tweet_truncator (tweet)
  selective_tweet_shortener (tweet)
  if tweet.size > 140
    truncated_tweet = "#{tweet[0..136]}..."
    truncated_tweet
  else
    tweet
end
end
