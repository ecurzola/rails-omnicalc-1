class OperationController < ApplicationController

  def homepage
    render({:template => "operation_templates/homepage"})
  end

  def square_result
    @num = params.fetch("number").to_f
    @num_squared = @num * @num
    
    render({:template => "operation_templates/square_result"})
  end

  def root
    render({:template => "operation_templates/root"})
  end

  def root_result
    @num = params.fetch("user_number").to_f
    @num_square_root = @num ** 0.5
    
    render({:template => "operation_templates/root_result"})
  end

  def random
    render({:template => "operation_templates/random"})
  end

  def random_result
    @min = params.fetch("user_min").to_f
    @max = params.fetch("user_max").to_f
    @random = rand(@min..@max).to_f
    
    render({:template => "operation_templates/random_result"})
  end

  def payment
    render({:template => "operation_templates/payment"})
  end

  def payment_result
    @apr = (params.fetch("user_apr").to_f).to_fs(:percentage, precision: 4)
    apr_calc = @apr.to_f / 100
    @years = params.fetch("user_years").to_i
    years_calc = @years.to_f
    @principal = (params.fetch("user_pv").to_f).to_fs(:currency)
    principal_calc = params.fetch("user_pv").to_f
    @numerator = (apr_calc/12) * principal_calc
    @denominator = 1 - (1 + (apr_calc/12)) ** -(years_calc * 12)
    @payment = (@numerator / @denominator).to_fs(:currency)
   
    render({:template => "operation_templates/payment_result"})
  end

end
