

def encrypt(abc)
  string = abc.length
  x = 0
  result = ''
  while string > 0
    result += abc[x].next
    x += 1
    string -= 1
    if result == 'aa'
      result.slice! 'a'
    end
  end
  puts result
  result
end


def decrypt(input)
  string_length = input.length
  letter = 0
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  result=''
  while string_length > 0
    prev_letter = alphabet.index(input[letter]) - 1
    letter += 1
    string_length -= 1
    result += alphabet[prev_letter]
    if result == "`"
    result = 'z'
    end
  end
  puts result
  result
end
# encrypt("abc")
# encrypt("zed")
# decrypt("bcd")
# decrypt("afe")
# decrypt(encrypt("swordfish"))
# When encrypt calls swordfish, it advances every letter forward, and the result ends up being "txpsegjti", after the function is finsihed changing every letter the decrypt function is called, and it reverses every letter back to swordfish.
# it basically uses the pemdas method in math, meaning everything in the parentheses will be changed first, and when that function is complete it will start the next 


puts "Would you like to encrypt or decrypt?"
e_or_d = gets.chomp
puts "What's the password?"
password = gets.chomp
if password == "dbc rocks!"
  password_result = true
else 
  password_result = false
end
if e_or_d == "encrypt" && password_result == true
  puts "What would you like to encrypt?"
  answer = gets.chomp
  encrypt(answer)
elsif e_or_d == "decrypt" && password_result == true
  puts "What would you like to decrypt?"
  answer = gets.chomp
  decrypt(answer)
else
  puts "Sorry didn't get that, try again"
end
