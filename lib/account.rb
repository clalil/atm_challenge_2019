class Account

    attr_accessor :pin_code, :exp_date, :account_status, :balance

    def initialize
      @pin_code = rand(1000..9999)  
    end

end