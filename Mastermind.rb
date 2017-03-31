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

@results = @colorCode.zip(@guessCode).map { |x, y| if x == y
"correct"
end

}

print @colorCode
print @results

if @guessCode == @colorCode
  puts "You win!"
  exit
end

end

end

a = Mastermind.new
a.playerGuess
a.computerCode
a.compareCodes
