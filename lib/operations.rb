## Inputs --> number (interger)
## Outputs --> answer the question am i unsafe -->boolean ()
#of upir speed is > 60, say TRUE
# of upir speed is <40, say TRUE

#if you speed is > 60 or your is < 40, say TRUE
# otherwise, say FALSE


def unsafe?(speed)
 if speed > 60 || speed < 40
   return true 
else
  return false
 end
end


def not_safe?(speed)
  speed >60 || speed < 40 ? true : false
end
	

