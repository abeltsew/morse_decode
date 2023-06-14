MORSE_KEY = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}.freeze

def decode_char(char)
  MORSE_KEY[char].upcase
end

puts decode_char('.-')

def decode_word(word)
  splited = word.split
  reponse = ''
  splited.each do |c|
    reponse += decode_char(c)
  end
  reponse.upcase
end

puts decode_word('-- -.--')

def decode(string)
  splited_string = string.split('   ')
  message = ''
  splited_string.each do |word|
    message += "#{decode_word(word)} "
  end
  message.upcase
end
puts decode('-- -.--   -. .- -- .')
puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
