# Write your code here.
def dictionary
  dictionary = {"hello" => 'hi', 
                "to" => '2', 
                "two" => '2',
                "too" => '2', 
                "for" => '4', 
                "four" => '4',
                "be" => 'b',
                "you" => 'u',
                "at" => '@', 
                "and" => '&'
                 }
end                 

def word_substituter(tweet)
  tweet.split(" ").collect do |wd| 
    if dictionary.keys.include?(wd)
      wd = dictionary[wd]
    else
      wd = wd
    end
  end.join(" ")
end   

    