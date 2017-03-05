b = []
for i in 0..4 do
  b << []
  for j in 0..4 do
    b[i] << '□'
  end
end

b[2][1] = '■'
b[2][2] = '■'
b[2][3] = '■'

for i in 0..4 do
  line = ''
  for j in 0..4 do
    line += b[i][j]
  end
  puts line
end

for times in 0..2
  bb = [[],[],[],[],[]]
  for i in 0..4 do
    for j in 0..4 do
      count = 0

      if b[i][j] == '□'
        # 誕生の場合
        count = 0
        if b[i-1][j-1] == '■'; count += 1 end
        if b[i-1][j] == '■'; count += 1 end
        if b[i-1][j+1] == '■'; count += 1 end
        if b[i][j-1] == '■'; count += 1 end
        if b[i][j+1] == '■'; count += 1 end
        if i < 4 && b[i+1][j-1] == '■'; count += 1 end
        if i < 4 && b[i+1][j] == '■'; count += 1 end
        if i < 4 && b[i+1][j+1] == '■'; count += 1 end
        if count >= 3
          bb[i][j] = '■'
        else
          bb[i][j] = '□'
        end
      end

      if b[i][j] == '■'
        # 生存・過疎・過密の場合
        count = 0
        if b[i-1][j] == '■'; count += 1 end
        if b[i][j-1] == '■'; count += 1 end
        if b[i][j+1] == '■'; count += 1 end
        if b[i+1][j] == '■'; count += 1 end
        if count == 2
          bb[i][j] = b[i][j]
        else
          bb[i][j] = '□'
        end
      end
    end
  end
  b = bb
  puts "#{times}=========="
  for i in 0..4 do
    line = ''
    for j in 0..4 do
      line += b[i][j]
    end
    puts line
  end
end
