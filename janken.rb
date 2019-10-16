def change_int(input)
  return Integer(input)
rescue
  return input
end

while true do
  hand = ["グー","チョキ","パー"]
  puts "最初はグー、じゃんけん...\n[0]:グー\n[1]:チョキ\n[2]:パー"
  input = change_int(gets)

  if input.kind_of?(String)
    puts '数値を入力してください'
  else
    output = rand(3)
    if input == output
      puts "あなたの手:#{hand[input]}、相手の手:#{hand[output]}\nアイコです"
    elsif (input == 0 && output == 1) || (input == 1 && output == 2) || (input == 2 && output == 0)
      puts "あなたの手:#{hand[input]}、相手の手:#{hand[output]}\nあなたの勝ちです"
      exit
    elsif (input == 1 && output == 0) || (input == 2 && output == 1) || (input == 0 && output == 2)
      puts "あなたの手:#{hand[input]}、相手の手:#{hand[output]}\nあなたの負けです"
      exit
    else
      puts "入力された値が無効です。"
    end
  end
end
