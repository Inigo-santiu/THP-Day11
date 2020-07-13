def echo(string)
  return string
end

def shout(string)
  return string.upcase
end

def repeat(string,n=2)
  return ((string+" ")*n).strip
end

def start_of_word(string, i=1)
  if i == nil || i == 0
    return string[0]
  else
    return string[0..i-1]
  end
end

def first_word(string)
  return string.split[0]
end

def titleize(sentence)
  little_words = %w(end and the)
  return sentence.capitalize.gsub(/(\w+)/) do |word|
    little_words.include?(word) ? word : word.capitalize
  
  end
end




















#
#str.gsub(/\w+/) { |w| w.capitalize }

#def jaden_cased (not_jaden_string)
#  not_jaden_string.split(' ').map(&:capitalize).join(' ')
#end


