b = []
for i in 0..4 do
  b << []
  for j in 0..4 do
    b[i] << '□'
  end
end

for i in 0..4 do
  line = ''
  for j in 0..4 do
    line += b[i][j]
  end
  puts line
end

for times in 0..2
  puts "#{times}=========="
  for i in 0..4 do
    line = ''
    for j in 0..4 do
      line += b[i][j]
    end
    puts line
  end
end
