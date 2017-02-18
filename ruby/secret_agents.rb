# Define a method encrypt. Start at position index(0). Look at the letter in that position and advance that letter to next letter alphabetically. However, the letter "Z" is an edge case so we must separately account for "Z" by hard coding it into your program.


def encrypt(password)
  encrypted_password = ""


   i = 0
    while i < password.length
        if password[i] == "z"
        password[i] = "a"
        encrypted_password =  encrypted_password + password[i] 
    
        i += 1
        else

        encrypted_password =  encrypted_password + password[i].next
        i += 1
        end
    end

  puts encrypted_password
end

# puts encrypt("zaebq")



# Define a method 'decrypt'. Create a string that hold the entire alphabet. We want to create a loop though the word that want to decrypt, and you want to change the index of that character by -1. 
 
 def decrypt(password)
    #store alphabet in a string so that we can access it.
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    
    #loop through the alphabet and match password and alphabet against each other.
    #nested loop

    #set index to zero
    index = 0 
    
    #decryption_index = nil
    
    while index < password.length 
      counter_alpha = 0
      
      until password[index] == alphabet[counter_alpha]
      counter_alpha += 1
      #store counter alpha into another variable
    
      end 
           password[index] = alphabet[counter_alpha - 1]
      
    index += 1 
    end
    puts password
  end

  # puts decrypt(encrypt("swordfish"))

  # This method works because you are running the first method first and then you're are decrypting it. 

  puts "Would you like to encrypt or decrypt?"

  choice = gets.chomp

  puts "what is your password?"
  password = gets.chomp

  puts "Great Here is your password"
  if choice == "encrypt"
    encrypt(password)
  else
    decrypt(password)
  end
