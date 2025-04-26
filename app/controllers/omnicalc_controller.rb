class OmnicalcController < ApplicationController

  def square_in
    render({:template => "omnicalc_templates/square_new"})
  end

  def square_root_in
    render({:template => "omnicalc_templates/square_root_new"})
  end
  
  def payment_in
    render({:template => "omnicalc_templates/payment_new"})
  end

  def random_in
    render({:template => "omnicalc_templates/random_new"}) 
  end

  def square_results
    @num = params[:number].to_f
    @calc = @num**(2.0)

    render({:template => "omnicalc_templates/square_results"})
  end

  def square_root_results
    @num = params[:user_number].to_f
    @calc = @num**(1.0/2.0)

    render({:template => "omnicalc_templates/square_root_results"})
  end
  
  def payment_results
    @r = ((params[:user_apr].to_f))
    @pv = (params[:user_pv].to_f)
    @n = (params[:user_years].to_i)
  
    rmonth = (@r/100.0)/12.0
    n2 = @n*12
  
    @num = rmonth*@pv
    @den = 1 - ((1+rmonth)**-n2)
    @calc = @num/@den

    render({:template => "omnicalc_templates/payment_results"})
  end

  def random_results
    @min = params[:user_min].to_f
    @max = params[:user_max].to_f
  
    @calc = rand(@min..@max)
    
    render({:template => "omnicalc_templates/random_results"}) 
  end

end
