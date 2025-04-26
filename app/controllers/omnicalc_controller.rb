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

end
