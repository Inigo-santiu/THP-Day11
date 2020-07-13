def translate(string)
  pig_array = sentence.split(" ")
  alphabet = ('a'..'z').to_a
  vowel_array = ["a", "e", "i", "o", "u"]
  consonants = alphabet - vowel_array
  
#"counts 'qu' as a consonant even when it's preceded by a consonant" do
  pig_array.each |string|  do
  if string[0].include?("a", "e", "i", "o", "u")
    return string += "ay"

  elsif string[0..2].include?("qu")
    if string[0] == "q"
      return string = string[2..string.length -1] + "quay"
    else
      return string = string[3..string.length -1] + "squay"
    end

  elsif string[0..2].include?(consonants) #3 consonant 
    return string[3..string.length -1] + string[0..2] + "ay"
    if string[0..1].include?(consonants) #2 consonant
      return string[2..string.length -1] + string[0..1] + "ay"
    else    
      return string[1..string.length -1] + string[0] + "ay"

  result = pig_array.join(' ')
  end
end

