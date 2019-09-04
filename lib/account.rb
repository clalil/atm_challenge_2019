class Account
  STANDARD_VALIDITY_YRS = 5

    def set_expire_date
      Date.today.next_year(STANDARD_VALIDITY_YRS).strftime('%m/%y')
    end

    def initialize
      @pin_code = rand(1000..9999) 
      @exp_date = set_expire_date
    end

end