#==============================================================================
# p18 ローカル変数とインスタンス変数との違い
#==============================================================================

class MyClass
  def method_1
    number = 100
  end

  def method_2
    number
  end
end

class MyClass
  def method_1
    @number = 100
  end

  def method_2
    @number
  end
end
