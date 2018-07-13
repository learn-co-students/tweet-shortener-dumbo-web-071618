require 'pry'

# Write your code here.

def dictionary
  {
    'hello' => 'hi',
    'to' => '2', 
    'two' => '2',
    'too' => '2',
    'for' => '4',
    'four' => '4',
    'be' => 'b',
    'you' => 'u',
    'at' => "@", 
    'and' => "&"
  }
end 

def word_substituter(string)

  key_array = dictionary.keys
  new_string = [] 
  
  string.split(' ').each do |word|

    if key_array.include?(word.downcase) == true
      new_string << dictionary[word.downcase]
    else 
      new_string << word
    end
  end
  new_string.join(" ")
end


def bulk_tweet_shortener(array)
  array.each do |string|
    puts word_substituter(string)
  end
end

def selective_tweet_shortener(string)
  if string.length > 140
    word_substituter(string)
  else
    string
  end
end

def shortened_tweet_truncator(string)
  if selective_tweet_shortener(string).length > 140
    new_string = selective_tweet_shortener(string)[0..135] + " ..."
    new_string
  else
    selective_tweet_shortener(string)
  end
end

