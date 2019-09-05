

class Person
  attr_accessor :name, :cash, :account

  def initialize(attrs = {})
    @name = set_name(attrs[:name])
    @cash = 0
    @account = nil
  end

  def set_name(obj)
    obj == nil ? no_name : obj
  end

  def no_name
    raise 'A name is required'
  end

  def create_account
    @account = Account.new(owner: self)
  end

  def deposit(sum)
    @deposit == nil ? no_money : sum
  end

  def no_money
    raise 'No account present'
  end

end