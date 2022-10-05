class AlphPos
  puts('Enter your string without capitalization::')
  user_choise =  gets
  indexes = ('a'..'z').each_with_index.map{|l,i| [l, i+1]}.to_h
  puts('Alphabet position:')
  print(user_choise.chars.map{|l| indexes[l]})
end
