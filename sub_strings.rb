dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
phrase = "Howdy partner, sit down! How's it going?"

def substrings (string, dictionary)
    arr = string.downcase.split(' ')

    dictionary.reduce(Hash.new(0)) {|hash,word|
        arr.each {|item|
            hash[word] += 1 if  item.include?(word)
        }
        hash
    }   
end

p substrings(phrase, dictionary)