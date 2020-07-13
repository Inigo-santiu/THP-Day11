def who_is_bigger(a, b, c)
  
  if a == nil or b == nil or c == nil
    return "nil detected"
  else
    if a > b && a > c
      return "a is bigger"
    elsif b > a && b > c
      return "b is bigger"
    else c > a && c > b
      return "c is bigger"
    end
  end
end

def reverse_upcase_noLTA(crazy_stuff)
  return crazy_stuff.reverse.upcase.delete("LTA")
end

def array_42(theanswertolifetheuniverseandeverything)
  return theanswertolifetheuniverseandeverything.include?(42)
end

def magic_array(its_a_kinda_magic)
  return its_a_kinda_magic.flatten.sort.map!{|i| i*2}.delete_if {|v| v % 3 == 0}.uniq.sort
end

#def execute
#  puts its_a_kinda_magic
#end 
#
#execute