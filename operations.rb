#use an if else statement to define whether the conditions are unsafe (speed is less than 40 or speed is greater than 60 )
def unsafe?(speed)
  speed < 40 || speed > 60 ? "unsafe" : "safe"
end


#use a ternary operator to define whether the conditions are unsafe
def not_safe?(speed)
  speed < 40 || speed > 60 ? "unsafe" : "safe"
end


#build a one line method named sum_machine that takes two args and returns the sum of all the numbers in between
def sum_machine(first, second)
  if first < second
    low = first
    high = second
  else
    low = second
    high = first
  end

  sum = 0
  (low..high).each do |num|
    sum += num
  end
  sum
end


#given the array
crazy_sauce = [nil, 2, 4, 5, 6, nil, 10]
#output the squares of each number. For nil output 0.
#You cannot use the method #compact but do use the operator

def squares(collection)
  collection.collect do |num|
    num ||= 0
    num*num
  end
end