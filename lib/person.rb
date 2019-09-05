

class Person
  attr_accessor :name, :cash, :account, :deposit

  def initialize(attrs = {})
    @name = set_name(attrs[:name])
    @cash = 0
    @account = nil
    @deposit = 
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

  def deposit(money)
    money == nil ? be_truthy : money
  

  end
end