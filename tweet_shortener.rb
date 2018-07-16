# Write your code here.
def dictionary
  {
    "hello" => 'hi',
    "to"    => '2',
    "two"   => '2',
    "too"   => '2',
    "for"   => '4',
    "four"  => '4',
    'be'    => 'b',
    'you'   => 'u',
    "at"    => "@",
    "and"   => "&"
  }
end

def word_substituter(tweet)
  tweet.split(' ').map do |word|
    dictionary[word.downcase] ? dictionary[word.downcase] : word
  end.join(' ')
end

def bulk_tweet_shortener(tweets)
  tweets.map do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  return tweet.length > 140 && word_substituter(tweet) || tweet
end

def shortened_tweet_truncator(tweet)
  shortened_tweet = selective_tweet_shortener(tweet)
  if shortened_tweet.length > 140
    return "#{shortened_tweet[0..139]}"
  end
  return shortened_tweet
end
