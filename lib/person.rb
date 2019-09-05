class Person
  attr_accessor :name 
  # :cash, :account

  def initialize(attrs = {})
    @name = set_name(attrs[:name])
    # @cash = cash
    # @account = account
  end

  def set_name(obj)
    obj == nil ? no_name : obj
  end

  def no_name
    raise 'A name is required'
  end

end