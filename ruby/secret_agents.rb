

def encrypt(abc)
  string = abc.length
  x = 0
  while string > 0
    puts abc[x].next
    x += 1
    string -= 1
  end
end



def decrypt(input)
  string_length = input.length
  letter = 0
  alphabet = "abcdefghijklmnopqrstuvwxyz"

  while string_length > 0
    prev_letter = alphabet.index(input[letter]) - 1
    letter += 1
    string_length -= 1
    puts alphabet[prev_letter]
  end
end

decrypt("abc")