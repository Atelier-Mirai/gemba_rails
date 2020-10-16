dividend = 360
puts '360はいろいろな数で割ることができます。'

begin
  loop do
    print '割る数を入力してください。'
    divisor = gets.chomp.to_i
    puts "360を#{divisor}で割ると#{dividend/divisor}です"
  end
rescue => e
  puts "#{e.class} (#{e.message})が発生しましたので、終了します。"
end
