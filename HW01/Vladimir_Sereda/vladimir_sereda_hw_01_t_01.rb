puts 'Number of hourse'
hours = gets.to_i

puts 'Number of minutes'
minutes = gets.to_i

def angel(hours, minutes)
  # Cloc hand position
  a = ((hours * 60) + minutes) * 0.5
  # Minute hand position
  b = minutes * 6
  # finding the angel between them
  c = a - b
  if c.abs > 180
    360 - c.abs
  else
    c.abs
  end
end

puts angel(hours, minutes).to_s
