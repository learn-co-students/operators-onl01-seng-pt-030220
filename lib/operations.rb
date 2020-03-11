## inputs --> speed -- number(integer)
## outputs --> answer the question am i unsafe --> boolean


#if your speed is > 60 or your speed is < 40, say true
#otherwise, say false

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
