#==============================================================================
# 似たところのあるクラスを創りたいとき
#==============================================================================
class Product
  attr_accessor :price

  def total_price
    price * Tax.rate
  end
end

class OrderedItem
  attr_accessor :unit_price, :volume

  # 税抜き単価 * 数量
  def price
    unit_price * volume
  end

  def total_price
    price * Tax.rate
  end
end

class Tax
  class << self
    def rate
      1.1
    end
  end
end

car = Product.new
car.price = 100_0000 # 車の値段は100万円
car.total_price
#=> 1100000.0 税込110万円

cake = OrderedItem.new # ケーキの注文があった
cake.unit_price = 1000 # ケーキの単価は1000円
cake.volume = 5        # 数量は5つ
cake.total_price
#=> 5500.0    税込5500円


#==============================================================================
# p38 継承
#==============================================================================
# 「価格あるもの」を抽象化したクラス (どちらかというとMix-inでの実装が望ましい)
class PricedObject
  def total_price
    price * Tax.rate
  end

  def price
    # 「raise NotImplementedError」は、機能が実装されていないことを表すエラーです。
    # サブクラスが、priceメソッドを実装していないとき、エラーを発生させます。
    raise NotImplementedError
  end
end

class Product < PricedObject
  attr_accessor :price
end

class OrderedItem < PricedObject
  attr_accessor :unit_price, :volume

  # 税抜き単価 * 数量
  def price
    unit_price * volume
  end
end

#------------------------------------------------------------------------------
# p40 継承の例
#------------------------------------------------------------------------------
class Book
  def title
    '本のタイトル'
  end
end

class Magazine < Book
  def title
    '雑誌のタイトル'
  end
end

book = Book.new
puts book.title #=> 本のタイトル

magazine = Magazine.new
puts magazine.title #=> 雑誌のタイトル

#------------------------------------------------------------------------------
# p40 オーバーライド
#------------------------------------------------------------------------------
class BaseTask
  def puts_message
    puts 'BaseTaskのタスク'
  end
end

class Task < BaseTask
  def puts_message
    super
    puts 'Taskのタスク'
  end
end

task = Task.new
puts task.puts_message
#=> BaseTaskのタスク
#   Taskのタスク
