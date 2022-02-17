
islandarray = [2, 1, 2, 1, 2, 1, 2]
count = 0
prev_maximum = 0

islandarray.each_with_index do |value, index|
  if value > prev_maximum
    prev_maximum = value
  end
  count += prev_maximum-value
end
prev_maximum = 0
islandarray.reverse.each_with_index do |value, index|
  if value > prev_maximum
    prev_maximum=value
  end
  if prev_maximum == islandarray.max
    break
  end
  count -= (islandarray.max - prev_maximum)

end

puts count
