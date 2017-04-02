class Mastermind

def computerCode
  # red = 1, green = 2, blue = 3, black = 4, white = 5, brown = 6
@code = Array.new(4) {rand(1..6)}

@colorCode = @code.map { |x|
  if x == 1
  "red"
elsif x == 2
  "green"
elsif x == 3
  "blue"
elsif x == 4
  "black"
elsif x == 5
  "white"
elsif x == 6
  "brown"
#else x
  end
}

end

def playerGuess
  puts "Please give me the first color."
  color1 = gets.chomp
  puts "Please give me the second color."
  color2 = gets.chomp
  puts "Please give me the third color."
  color3 = gets.chomp
  puts "Please give me the fourth color."
  color4 = gets.chomp
  @guessCode = [color1, color2, color3, color4]

end

def compareCodes

@results = @colorCode.zip(@guessCode).map { |x, y|
  if x == y
"Direct match!"
else
  "-"
end

}

print "\nHere's your guess: #{@guessCode}\n"

print "Here are how many matches you guessed correctly: #{@results}\n"

print "These colors are definitely somewhere in my code: #{@colorCode & @guessCode}\n"

if @guessCode == @colorCode
  puts "You win!"
  exit
end

end

def turn
  @i ||= -1
  @i += 1
end

end

a = Mastermind.new
a.playerGuess
a.computerCode
a.compareCodes



#@colorCode.each { |x|
#  if (@guessCode.include?(x))
#    puts x
#  end
#}

# print @colorCode.zip(@guessCode).collect { |x, y|
#  if @colorCode.include?(y)
#    "This color"
#  end
# }
