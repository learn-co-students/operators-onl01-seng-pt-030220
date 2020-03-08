## inputs - speed - integer 
## outputs - is it safe - boolean

# if the speed is < 40 or > 60, say true 
# otherwise, say false 

def unsafe?(speed)
  if speed < 40 || speed > 60
    return true
  else
    return false
  end 
end



def not_safe?(speed)
  speed < 40 || speed > 60 ? true : false	
end
	


