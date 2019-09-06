

class Person
  attr_accessor :name, :cash, :account

  def initialize(attrs = {})
    @name = set_name(attrs[:name])
    @cash = 0
    @account = nil
  end

  def set_name(obj)
    obj == nil ? no_name_set : obj
  end

  def deposit(amount)
    @account.nil? ? no_account_present : deposit_funds(amount)
  end

  def no_name_set
    raise 'A name is required'
  end

  def create_account
    @account = Account.new(owner: self)
  end

  def deposit_funds(sum)
    @cash -= sum
    @account.balance += sum
    # sum.nil ? no_account_present : sum
  end

  def no_account_present
    raise RuntimeError, 'No account present'
  end

end