Rails.application.routes.draw do

  get("/",{:controller => "omnicalc", :action => "square_in"}) do
  end

  get("/square/new",{:controller => "omnicalc", :action => "square_in"}) do
  end

  get("/square_root/new",{:controller => "omnicalc", :action => "square_root_in"}) do
  end 

  get("/payment/new",{:controller => "omnicalc", :action => "payment_in"}) do
  end 

  get("/random/new",{:controller => "omnicalc", :action => "random_in"}) do
  end 

  get("/square",{:controller => "omnicalc", :action => "square_results"}) do
  end 

  get("/square_root",{:controller => "omnicalc", :action => "square_root_results"}) do
  end 

  get("/payment",{:controller => "omnicalc", :action => "payment_results"}) do
  end 

  get("/random",{:controller => "omnicalc", :action => "random_results"}) do
  end 

end
