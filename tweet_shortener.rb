def dictionary
  {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "four" => "4",
    "for" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(message)
  revised_array = message.split.map do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end
  revised_array.join(" ")
end

def bulk_tweet_shortener(array_of_tweets)
  array_of_tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(message)
  message.length > 140 ? word_substituter(message) : message
end

def shortened_tweet_truncator(message)
  new_message = selective_tweet_shortener(message)
  if new_message.length > 140
    new_message = "#{new_message[0..136]}..."
  end
  new_message
end