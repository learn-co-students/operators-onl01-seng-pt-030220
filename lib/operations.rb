def unsafe?(speed)
   if speed > 60 || speed < 40
    return true
  else 
    return false
    
    
  end
  end




#if (ask a question that is true or false)

#code which runs if it is true
#else 
#code which runs if the question is false

#end

#question ? code which runs if the question is true : code which runs if the question is false

def not_safe?(speed)
   return speed < 40 || speed > 60 ? true : false 
  
	
end
	


# inputs --> speed below 40 greater than 60 numbers/integers

#outputs --> true and false answers /booleans

#speeds below 40 are unsafe
#speeds above 60 are unsafe
#if we input unsafe integers the method will result in a true return
#else we get safe integers the method will result in a false return
#If your speed is >60 OR <40 say true
#otherwise, say false