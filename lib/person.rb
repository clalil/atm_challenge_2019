
class Person
  attr_accessor :name, :account, :cash

  def initialize(attrs = {})
    @name = set_name(attrs[:name])
    @account = nil
    @cash = 0
  end

  def create_account
    @account = Account.new(owner: self)
  end

  def deposit(amount)
    @account.nil? ? no_account_present : deposit_funds(amount)
  end

  def withdraw(args = {})
    @account == nil ? no_account_present : withdraw_funds(args)
  end

  private

  def withdraw_funds(args)
    account = @account
    amount = args[:amount]
    pin = args[:pin]
    atm = args[:atm]
    atm == nil ? no_atm_present : atm
    response = atm.withdraw(amount, pin, account)
    response[:status] == true ? increase_cash(response) : response
  end

  def increase_cash(response)
    @cash += response[:amount]
  end

  def deposit_funds(deposit)
    @cash -= deposit
    @account.balance += deposit
  end

  def set_name(obj)
    obj == nil ? no_name_set : obj
  end

  def no_name_set
    raise 'A name is required'
  end

  def no_atm_present
    raise RuntimeError, 'An ATM is required'
  end

  def no_account_present
    raise RuntimeError, 'No account present'
  end

end