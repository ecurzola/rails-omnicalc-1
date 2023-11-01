Rails.application.routes.draw do

  get("/", {:controller => "operation", :action => "homepage"})
  get("/square/new", {:controller => "operation", :action => "square"})
  get("/square/new", {:controller => "operation", :action => "square"})
  get("/square/result", {:controller => "operation", :action => "square_result"})
  get("/square_root/new", {:controller => "operation", :action => "square_root"})
  get("/square_root/result", {:controller => "operation", :action => "square_root_result"})
  get("/random/new", {:controller => "operation", :action => "random"})
  get("/random/result", {:controller => "operation", :action => "random_result"})
  get("/payment/new", {:controller => "operation", :action => "payment"})
  get("/payment/result", {:controller => "operation", :action => "payment_result"})

end
