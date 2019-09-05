require './lib/account'

class Person
  attr_accessor :name, :cash, :account

  def initialize(attrs = {})
    @name = set_name(attrs[:name])
    @cash = 0
    @account = account
  end

  def set_name(obj)
    obj == nil ? no_name : obj
  end

  def no_name
    raise 'A name is required'
  end

  def create_account
    @account = Account.new
  end

  # def my_account_instance(obj)
  #   obj = Account.new 
  # end

end