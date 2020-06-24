Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html 

  
  root "burger#login", as: "login" 
  
  # post "/sign_up", to: "burger#sign_up"

  post "/", to: "burger#processing"  

  
  # sign up routes

  get "/signup", to: "burger#signup", as: "signup" 

  post "/signup", to: "burger#signup_data", as: "signup_data"


  # profile routes

  get "/profile/:name", to: "burger#profile", as: "profile"   

  post "/profile/:name", to: "burger#profile"  



  # match routes

  get "/match", to: "burger#match", as: "match"  

end
