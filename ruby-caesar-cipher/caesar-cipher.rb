def caesar_cipher(string, number)
  new_string = []
  string.each_char do |c|
    c = c.ord + number if c != " "
    new_string << c.chr
  end
  puts new_string.join
end

caesar_cipher("Hello world", 2)
caesar_cipher("I love Ruby", 3)
