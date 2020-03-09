#if speed 40> or 60< its unsafe. 

def unsafe?(speed)
  if speed <40 || speed > 60
    return true 
  else 
    return false 
  end 
end 

#if speed 40> or 60< its safe. 

 def not_safe?(speed)
    speed < 40  || speed > 60  ? true : false
 end

	


