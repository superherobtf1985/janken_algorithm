while true do
  hand = ["グー","チョキ","パー"]
  puts "最初はグー、じゃんけん...\n[0]:グー\n[1]:チョキ\n[2]:パー"
  input = gets

  if input =~ /^[0-2]$/
    input = Integer(input)
    output = rand(3)
    if input == output
      puts "あなたの手:#{hand[input]}、相手の手:#{hand[output]}\nアイコです"
    elsif (input == 0 && output == 1) || (input == 1 && output == 2) || (input == 2 && output == 0)
      puts "あなたの手:#{hand[input]}、相手の手:#{hand[output]}\nあなたの勝ちです"
      break
    elsif (input == 1 && output == 0) || (input == 2 && output == 1) || (input == 0 && output == 2)
      puts "あなたの手:#{hand[input]}、相手の手:#{hand[output]}\nあなたの負けです"
      break
    end
  else
    puts '0-2の数値を入力してください'
  end
end
