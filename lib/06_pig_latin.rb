def theprogram(string)
  alphabet = ('a'..'z').to_a
  vowel_array = ["a", "e", "i", "o", "u"]
  consonants = alphabet - vowel_array

#"counts 'qu' as a consonant even when it's preceded by a consonant" do
    if vowel_array.include?(string[0])
      return string += "ay"

    elsif string[0..2].include?("qu")
      if string[0] == "q"
        string = string[2..(string.length-1)] + "quay"
        return string
      else
        return string = string[3..(string.length-1)] + "squay"
      end

    elsif string[0..3].include?("sch")
      return string = string[3..(string.length-1)] + "schay"

    elsif consonants.include?string[1]#2 consonant test
      if consonants.include?string[2]#3 consonant test
        return string[3..(string.length-1)] + string[0..2] + "ay"
      else
        return string[2..(string.length-1)] + string[0..1] + "ay"
      end

    else #1 consonant
      return string[1..(string.length-1)] + string[0] + "ay"
    end
  end



  def translate(sentence)

  pig_array = sentence.split(" ")

 pig_array2 = []
 pig_array.each do |string|
   pig_array2 << theprogram(string)
 end

 return pig_array2.join(' ')

end