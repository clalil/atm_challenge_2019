require 'date'

class Account
  STANDARD_VALIDITY_YRS = 5
    attr_accessor :exp_date, :pin_code, :account_status

    def set_expire_date
      Date.today.next_year(STANDARD_VALIDITY_YRS).strftime('%m/%y')
    end

    def initialize
      @exp_date = set_expire_date
      @pin_code = rand(1000..9999)
      @account_status = :active
    end

    def deactivate
        @account_status = :deactivated
    end

end