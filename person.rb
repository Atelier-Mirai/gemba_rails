#==============================================================================
# p32 メソッドの呼び出しに制限をかける
#==============================================================================
class Person
  def initialize(money)
    @money = money
  end

  def billionair?
    money >= 10_0000_0000
  end

  def money
    money
  end
end

#------------------------------------------------------------------------------
# private メソッド
#------------------------------------------------------------------------------
class Person
  def initialize(money)
    @money = money
  end

  def billionair?
    money >= 10_0000_0000
  end

  private

  def money
    @money
  end
end
