# find number of times a substring is in string
def substrings(string, dictionary)
    # create output hash
    output = Hash.new(0)

    # iterate for each word in dictionary
    dictionary.each do |word|
        # find number of times that word is in string
        output[word] = string.scan(word).length
        # if it isn't found in the string, don't output to hash
        if output[word] == 0
            output.delete(word)
        end
    end
    puts output
    play_again()
end

# ask user to play again
def play_again()
    puts "Would you like to play again? Type \"Y\" or \"N\". "
    answer = gets.chomp

    # if they want to play, trigger another game, otherwise exit
    if answer == "Y"
        input()
    else
        exit
    end
end

def input()
    # sample dictionary
    dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
    puts "What string would you like to compare against the dictionary?"
    string = gets.chomp
    substrings(string, dictionary)
end

input()

# Pseudocode
# function substrings(string, dictionary)
#     create hash with default value 0
#     remove punctuation from string
#     isolate words in string
#     make string into array
#     dictionary.each do 
#         if dictionary in string
#             dictionary[string] += 1
#         end
#     end