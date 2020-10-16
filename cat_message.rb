#==============================================================================
# p10
#==============================================================================# p10
class Cat
  def 追いかける(鼠)
    puts "一生懸命#{鼠}を追いかける" # 画面にメッセージを出力する
  end
end

タマ = Cat.new
タマ.追いかける('ねずみ🐁')
#=> 一生懸命ねずみ🐁を追いかける

#==============================================================================
# p11
#==============================================================================
# フォームから入玉されたデータが変数に入っている状態を作ります。
message = "先ほど注文した商品をキャンセルさせてください"

# メッセージの表示を行います
if message.length > 100
  puts 'メッセージは100文字以下で入力してください'
end

# メッセージの表示を行います
if message.length > 100
  puts 'メッセージは100文字以下で入力してください'
else
  puts message
end

# 連結する(concatenate)メソッドもある。
message1 = "こんにちは。"
message2 = "こんばんは。"
message1.concat(message2)
message1
message2

# 引数の必要のないメソッドに、引数を渡すとエラーとなる
message1.length(1)

# 複数の引数(ひきすう)を取ることができる。
message1 = "おはようございます。"
message2 = "こんにちは。"
message3 = "こんばんは。"
message1.concat(message2, message3)

# ()は省略できる。(誤読がない場合、省略することが多い)
message1 = "おはようございます。"
message2 = "こんにちは。"
message3 = "こんばんは。"
message1.concat message2, message3

# 引数(ひきすう)が必要なメソッドでは、()の省略が一般的
message1.length()
message1.length
