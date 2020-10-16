#==============================================================================
# p47 Rubyっぽい書き方
#==============================================================================

#------------------------------------------------------------------------------
# p47 nil ガード
#------------------------------------------------------------------------------

number ||= 10
number || number = 10

def children
  @children ||= []
end

#------------------------------------------------------------------------------
# p47 ぼっち演算子 &.
#------------------------------------------------------------------------------

class User
  def name
    '山田太郎'
  end
end

user = User.new
user.name
# => "山田太郎"

object = nil
object.name
object&.name

name =  if object
          object.name
        else
          nil
        end

name = object ? object.name : nil

name = object&.name

#------------------------------------------------------------------------------
# p49 % 記法
#------------------------------------------------------------------------------
fruits1 = ['apple🍎', 'banana🍌', 'cherry🍒']
puts fruits1

fruits2 = %w(apple🍎 banana🍌 cherry🍒)
p fruits2

fruits3 = [:apple🍎, :banana🍌, :cherry🍒]
p fruits3

fruits4 = %i(apple🍎 banana🍌 cherry🍒)
p fruits4

#------------------------------------------------------------------------------
# p49 配列の各要素から特定の属性だけを取り出す
#------------------------------------------------------------------------------
class User
  attr_accessor :name

  def initialize(name = "名無しの権兵衛")
    @name = name
  end
end

user1 = User.new('Taro')
user2 = User.new('Jiro')
user3 = User.new('Saburo')
users = [user1, user2, user3]

# each と << を使う
#------------------------------------------------------------------------------
names = []
names = users.each do |user|
  names << user.name
end

# map メソッド
#------------------------------------------------------------------------------
names = users.map do |user|
  user.name
end

names = users.map { |user| user.name }

names = users.map(&:name)
# => ["Taro", "Jiro", "Saburo"]
