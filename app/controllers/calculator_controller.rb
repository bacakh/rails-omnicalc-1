class CalculatorController < ApplicationController
  def rand_new
    # Renders the form from calculator_templates/rand_new.html.erb
    render template: "calculator_templates/rand_new"
  end

  def rand_result
    @min = params[:users_min].to_f
    @max = params[:users_max].to_f

    if @min < @max
      @random_number = rand(@min...@max)
    else
      @error_message = "Minimum must be less than Maximum."
    end

    # Renders the result page from calculator_templates/rand_result.html.erb
    render template: "calculator_templates/rand_result"
  end

  def sq_new
    # Renders the form from calculator_templates/sq_new.html.erb
    render template: "calculator_templates/sq_new"
  end

  def sq_result
    @num = params[:users_num].to_f
    @sq = @num ** 2


    # Renders the result page from calculator_templates/sq_result.html.erb
    render template: "calculator_templates/sq_result"
  end

  def sq_rt_new
    # Renders the form from calculator_templates/sq_new.html.erb
    render template: "calculator_templates/sq_rt_new"
  end

  def sq_rt_result
    @num = params[:users_num].to_f
    @sq_rt = Math.sqrt(@num)


    # Renders the result page from calculator_templates/sq_result.html.erb
    render template: "calculator_templates/sq_rt_result"
  end

  def pay_new
    # Renders the form from calculator_templates/sq_new.html.erb
    render template: "calculator_templates/pay_new"
  end

  def pay_result
    @apr = params[:users_apr].to_f
    @yr = params[:users_yr].to_f
    @princ = params[:users_princ].to_f
    @monthly_rate = @apr / 100 /12
    @num_payments = @yr * 12

    if @monthly_rate > 0
      @monthly_payment = (@princ * @monthly_rate) / (1 - (1 + @monthly_rate) ** -@num_payments)
    else
      # If APR is 0, the payment is just the principal divided by months
      @monthly_payment = @princ / @num_payments
    end
    # Renders the result page from calculator_templates/sq_result.html.erb
    render template: "calculator_templates/pay_result"
  end
end
