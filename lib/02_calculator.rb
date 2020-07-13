def add(first_number, second_number)
  return first_number + second_number
end

def subtract(first_number, second_number)
  return first_number - second_number
end

def sum(number_array)
  number = 0
  number_array.each {|n|number += 1}
  return number
end

def multiply(first_number, second_number)
  return  first_number * second_number
end

def power(first_number, second_number)
  return first_number ** second_number
end

def factorial(number)
  i = 1
  result = 1
  if number == 0 
    return 0
  else
    until i > number
      result *= i
      i += 1
    end
    return result

  end
end
