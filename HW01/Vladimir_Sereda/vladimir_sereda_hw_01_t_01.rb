puts 'Number of hourse'
hours = gets.to_i

puts 'Number of minutes'
minutes = gets.to_i

def angel(hours, minutes)
  cloc_hand_position = ((hours * 60) + minutes) * 0.5
  minute_hand_position = minutes * 6
  angel_between_them = cloc_hand_position - minute_hand_position
  if angel_between_them.abs > 180
    360 - angel_between_them.abs
  else
    angel_between_them.abs
  end
end

puts angel(hours, minutes).to_s
