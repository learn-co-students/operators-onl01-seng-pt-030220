def unsafe?(speed=0)
  if speed >=  60
    TRUE
  elsif speed <= 40
    TRUE
  else 
    FALSE
  end
end

unsafe?(70)
unsafe?(40)
unsafe?(20)

def not_safe?(speed=0)
	speed >= 60 || speed <= 40? TRUE : FALSE
end
	


