class operationController < ApplicationController

  def homepage
    render({:template => "operation_templates/homepage"})
  end

  def square_result
    @num = params.fetch("number").to_f
    @num_squared = @num * @num
    
    render({:template => "dice_templates/square_result"})
  end

  def square_root
    render({:template => "dice_templates/square_root"})
  end

  def square_root_result
    @num = params.fetch("user_number").to_f
    @num_square_root = @num ** 0.5
    
    render({:template => "dice_templates/square_root_result"})
  end

  def random
    render({:template => "dice_templates/random"})
  end

  def random_result
    @min = params.fetch("user_min").to_f
    @max = params.fetch("user_max").to_f
    @random = rand(@min..@max).to_f
    
    render({:template => "dice_templates/random_result"})
  end

  def payment
    render({:template => "dice_templates/payment"})
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
   
    render({:template => "dice_templates/payment_result"})
  end








end
