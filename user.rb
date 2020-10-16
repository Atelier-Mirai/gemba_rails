#==============================================================================
# p13 自分でクラスを創る
#==============================================================================
class User
end

class User
  def name
  end
end

class User
  def name
    return "匿名さん"
  end
end

class User
  def name
    "匿名さん"
  end
end

#------------------------------------------------------------------------------
# p16 インスタンス変数
#------------------------------------------------------------------------------
class User
  # セッター setter
  def name=(name)
    @name = name
  end

  # ゲッター getter
  def name
    @name
  end
end

#------------------------------------------------------------------------------
# p20 属性
#------------------------------------------------------------------------------
class User
  attr_accessor :name
  # 以下と等価
  # # セッター setter
  # def name=(name)
  #   @name = name
  # end
  #
  # # ゲッター getter
  # def name
  #   @name
  # end
end

#------------------------------------------------------------------------------
# p21 住んでいる場所やメールアドレスを持たせる
#------------------------------------------------------------------------------
class User
  attr_accessor :name, :address, :email
end

#------------------------------------------------------------------------------
# p21 メソッドからメソッドを使う
#------------------------------------------------------------------------------
class User
  attr_accessor :name, :address, :email

  def profile
    "#{name} (#{address})"
  end
end

#------------------------------------------------------------------------------
# p31 少し高度なテクニック
#------------------------------------------------------------------------------
class User
  attr_reader :name, :address, :email
  def initialize(name, address, email)
    @name    = name
    @address = address
    @email   = email
  end
end

#------------------------------------------------------------------------------
# p34 引数に既定値を設定する
#------------------------------------------------------------------------------
class User
  attr_reader :family_name, :given_name, :address, :email, :age
  def initialize(family_name, given_name, address, email)
    @family_name = family_name
    @given_name  = given_name
    @address     = address
    @email       = email
    @age         = age
  end

  def name(full, with_age)
    n = if full
          "#{family_name} #{given_name}"
        else
          family_name
        end
    n << " (#{age})" if with_age
  end
end

class User
  attr_reader :family_name, :given_name, :address, :email, :age
  def initialize(family_name, given_name, address, email)
    @family_name = family_name
    @given_name  = given_name
    @address     = address
    @email       = email
    @age         = age
  end

  def name(full = true, with_age = true)
    n = if full
          "#{family_name} #{given_name}"
        else
          family_name
        end
    n << " (#{age})" if with_age
  end
end

#------------------------------------------------------------------------------
# p35 キーワード引数
#------------------------------------------------------------------------------
class User
  attr_reader :family_name, :given_name, :address, :email, :age
  def initialize(family_name, given_name, address, email)
    @family_name = family_name
    @given_name  = given_name
    @address     = address
    @email       = email
    @age         = age
  end

  def name(full: true, with_age: true)
    n = if full
          "#{family_name} #{given_name}"
        else
          family_name
        end
    n << " (#{age})" if with_age
  end
end






def
  def profile
    "#{name} (#{address})"
  end

  def name(full, with_age)
    n = if full
           "#{family_name} #{given_name}"
        else
          given_name
        end
    n << "(#{age})" if with_age
  end
end
