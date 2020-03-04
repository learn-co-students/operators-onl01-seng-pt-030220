def unsafe?(speed)
  #if speed is > 60 or speed is  < 40 #true 
  #otherwise #false 
  if speed > 60 || speed < 40 
    return true 
  else 
    return false 
  end 
end


def not_safe?(speed)
return speed > 60 || speed < 40 ?  true : false 
end
	


