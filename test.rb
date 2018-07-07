def dictionary 
  replacements = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

tweet = "you you you be be be be to too two and and hello"

def mod tweet
  replacements = dictionary
  tweet = tweet.split(' ')
  new_tweet = []
  
  tweet.each do |words|
    if replacements.has_key?(words) == true 
      words = replacements[words]
    end
    new_tweet << words
  end
  new_tweet.join(' ')
end

puts mod tweet 


