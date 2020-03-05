##INPUTS --> speed --> number
##OUTPUTS --> answer the question am I unsafe

# if your speed is > 60 OR your speed is < 40, say true
#otherwiese, say false


def unsafe?(speed)
if speed > 60 || speed < 40
  return true
 else 
  return false 
 end
end



def not_safe?(speed)
speed < 40 || speed > 60 ? true : false
end
	


