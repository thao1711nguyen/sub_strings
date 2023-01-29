
#Program starts: accept a string and a dictionary (an array of strings) as arguments
    #Set string to downcase
    #Initilize an empty hash
    #FOR each item in the dictionary
        #IF the string contains the item
            #Count how many times the vocabulary appears in the string 
                #Initialize a new string that removes all of the vocabulary
                #Subtract the length of string to the length of new string
                #Divide the resulted length with length of the vocabulary
                # => the occurence of the vocabulary
            #Add the item to the hash: 
                #Key is the item
                #Value is the occurence of the vocabulary in the string
#Return a hash
def substrings(string, dictionary)
    string.downcase!
    dictionary.reduce(Hash.new(0)) do |result, vocabulary|
        if string.include?(vocabulary) 
            new_string = string.gsub(vocabulary,'')
            occurence = (string.length-new_string.length)/vocabulary.length
            result[vocabulary] = occurence
        end
        result
    end
end

dictionary = ["below","down","go","going","horn","how",
    "howdy","it","i","low","own","part","partner","sit"]
p substrings("Howdy partner, sit down! How's it going?", dictionary)
