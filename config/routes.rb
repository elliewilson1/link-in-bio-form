Rails.application.routes.draw do

  get("/", { :controller => "items", :action => "index" })

  get("/backdoor", { :controller => "items", :action => "insert_item" })

  post("/insert_item", { :controller => "items", :action => "new" })
end
