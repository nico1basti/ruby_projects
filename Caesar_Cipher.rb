ALPHABET = ("a".."z").to_a
ALPHABET_UP = ("A" .. "Z").to_a
NUMBERS  = ('0' .. '9').to_a

def ceasar_cipher (string, shift_factor) 
  s_array = string.split("").map{|digit|
    case 
    when ALPHABET.include?(digit)
      arr = ALPHABET
    when NUMBERS.include?(digit)
      arr = NUMBERS
    when ALPHABET_UP.include?(digit.upcase)
      arr = ALPHABET_UP
    else
      next digit
    end

    new_index = arr.find_index(digit) - (arr.length - shift_factor % arr.length)
    arr[new_index]
  }
  p s_array.join()
end

ceasar_cipher('Hello, World!', 75)