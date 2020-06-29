class BurgerController < ApplicationController  

 def login  

 end  

 def processing   
   
#   get data from login 
#   cross reference data from login and databse (see if same) 
#   if they are then direct to profile page 

puts"_-------_____---" 

if session[:login] == nil   
   session[:login] = [] 
end   

session[:login].push(params[:account]) 

@login = session[:login].last

@details = User.find_by(username: @login["username"]) 



if (@login["username"] == @details["username"]) && (@login["password"] == @details["password"])
   redirect_to profile_path(@details["username"])  
else 
   p "not right"
end   


p "==========" 

p @login["username"]  
p @login["password"]



 end  


#sign up methods

 def signup  
     
 end  



 def  signup_data 
   
   if session[:new_profile] == nil   
      session[:new_profile] = [] 
   end  

   session[:new_profile].push(params[:profile]) 

   @profile = session[:new_profile]   
   puts "_____________________________"
   puts @profile.last["username"]   

   @user = User.create(username: @profile.last["username"], password: @profile.last["password"], email: @profile.last["email"], number: @profile.last["number"], preference: @profile.last["preference"], bio: @profile.last["bio"])

   p @user

   redirect_to profile_path(@profile.last["username"]) 
 end

 def profile  
    @login = session[:login].last

    @details = User.find_by(username: @login["username"]) 

 end 

 def match 

 end

end