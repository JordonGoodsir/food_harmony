class BurgerController < ApplicationController  

 def login  
  
 end  

 def processing   
   
   
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
    puts "----------------"  
    puts params 

    @profile = session[:new_profile] 
    puts @profile 
    
 end 

 def match 

 end

end