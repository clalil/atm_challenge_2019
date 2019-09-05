class Person
  attr_accessor :name 
  # :cash, :account

  def initialize(attrs = {})
    @name = set_name(attrs[:name])
    # @cash = cash
    # @account = account
  end

  def set_name(obj)
    obj == nil ? nil : obj
  end

end