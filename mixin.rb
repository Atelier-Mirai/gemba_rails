#==============================================================================
# p41 モジュールによる共通化
#==============================================================================
# おしゃべり能力
module Chatting
  def chat
    "hello"
  end
end

class Dog
  include Chatting
end

pochi = Dog.new
pochi.chat
# => "hello"

class Cat
  include Chatting
end

class Human
  include Chatting
end
tama = Cat.new
tama.chat
# => "hello"

#------------------------------------------------------------------------------
# p42 複数のモジュールを取り込む
#------------------------------------------------------------------------------
# おしゃべり能力
module Chatting
  def chat
    "hello"
  end
end

# 泣く能力
module Weeping
  def weep
    "しくしく"
  end
end

class Human
  include Chatting
  include Weeping
end

taro = Human.new
taro.chat
# => "hello"
taro.weep
# => "しくしく"

#------------------------------------------------------------------------------
# 消費税計算機能をミックスインで
#------------------------------------------------------------------------------
# 価格についての共通機能をまとめたモジュール
module PriceHolder
  def total_price
    price * Tax.rate
  end
end

class Tax
  # クラスメソッド
  # def self.rate と書くこともできる。
  class << self
    def rate
      1.1
    end
  end
end

class Product
  include PriceHolder
  attr_accessor :price
end

class OrderedItem
  include PriceHolder
  attr_accessor :unit_price, :volume

  # 税抜き単価 * 数量
  def price
    unit_price * volume
  end
end
