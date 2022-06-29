Rails.application.routes.draw do
  root "todos#index"
  match "/create", :to => "todos#create", :via => :post
  get "/complete/:id" => "todos#complete", as: :com_id
  get "/delete/:id" => "todos#delete" , as: :dlt
end
