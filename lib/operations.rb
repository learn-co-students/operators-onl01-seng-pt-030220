## if the speed is more than 60 OR is less than 40
## then return true or else return false


def unsafe?(speed)
 if speed > 60 || speed < 40
 return true
 else return false
end
end



def not_safe?(speed)
speed > 60 || speed < 40 ? true : false
end
