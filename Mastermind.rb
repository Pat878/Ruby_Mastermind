class Mastermind

def computerCode
  # red = 1, green = 2, blue = 3, black = 4, white = 5, brown = 6
code = Array.new(4) {rand(1..6)}
print code
end

end

a = Mastermind.new
a.computerCode
