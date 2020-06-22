Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html 

  
  root "burger#login"  

  post "/", to: "burger#login" 

  get "/profile", to: "burger#profile", as: "profile"   

  post "/profile", to: "burger#profile" 

  get "/match", to: "burger#match", as: "match"  

end
