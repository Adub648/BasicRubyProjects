# frozen_string_literal: true

class CaesarCipherTest
    # complete encryption and output to user
    def caesar_cipher(string, shift)
      # split string into array
      string = string.downcase
      originalArray = string.split('')
  
      # set default values
      i = 0
      changedArray = []
      asciiValue = nil
  
      # iterate over each array element
      originalArray.each do |char|
        # if the element is a letter, shift it
        if char.ord.between?(65, 90) || char.ord.between?(97, 122)
          asciiValue = char.ord
          asciiValue += shift
          # if this shift will go outside the alphabet, go from z to a
          if asciiValue.between?(90, 96)
            newShift = asciiValue - 91
            asciiValue = 65 + newShift
          elsif asciiValue > 122
            newShift = asciiValue - 123
            asciiValue = 97 + newShift
          end
          # add shifted character to new array
          changedArray[i] = asciiValue.chr
        else
          # add unchanged character to new array
          changedArray[i] = char
        end
        i += 1
      end
  
      # join back array into string and output
      changedString = changedArray.join
      puts changedString
      changedString
      # play_again
    end
  
  #   # ask user to play again
  #   def play_again
  #     puts 'Would you like to play again? Type "Y" or "N". '
  #     answer = gets.chomp
  
  #     # if they want to play, trigger another game, otherwise exit
  #     if answer == 'Y'
  #       input
  #     else
  #       exit
  #     end
  #   end
  
  #   def input
  #     puts 'What string would you like to encrypt?'
  #     string = gets.chomp
  #     puts 'By how many letters would you like to shift it right?'
  #     shift = gets.chomp.to_i
  #     caesar_cipher(string, shift)
  #   end
  end
  
  # cipher = CaesarCipher.new
  # cipher.input
  
  # Pseudocode
  # function caesar_cipher(string, shift)
  #     split string array into originalArray
  #     i = 0
  #     for originalArray.each |char|
  #         if not letter
  #             changedArray[i] = char
  #             i += 1
  #             continue to next iteration
  #         end
  #         asciiValue = char.ord
  #         asciiValue += shift
  #         if asciiValue > 90
  #             shift = asciiValue - 90
  #             asciiValue = 65 + shift
  #         elsif  asciiValue > 122
  #             shift = asciiValue - 122
  #             asciiValue = 97 + shift
  #         end
  #         changedArray[i] = asciivalue.chr
  #         i += 1
  #         end
  #     join changedArray into string
  #     changedArray
  