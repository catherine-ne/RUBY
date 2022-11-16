file = File.open("text.txt")

lines = file.readlines
text = lines.join
charac = text.length
words = text.split.count
nospaces = text.gsub(/\s+/, '').length
double_word = text.strip.downcase.split(/[^\w']+/).group_by(&:to_s).map{|w| {w[0]=>w[1].count}}

puts("Lines: #{lines.count}")
puts("Characters: #{charac}")
puts("Number of words: #{words}")
puts(double_word)
file.close

