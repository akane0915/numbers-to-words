class Fixnum
  define_method(:word_number) do
    ones = {"0" => "", "1" => "one", "2" => "two", "3" => "three", "4" => "four", "5" => "five", "6" => "six", "7" => "seven", "8" => "eight", "9" => "nine"}

    teens = {"10" => "ten", "11" => "eleven", "12" => "twelve", "13" => "thirteen", "14" => "fourteen", "15" => "fifteen", "16" => "sixteen", "17" => "seventeen", "18" => "eighteen", "19" => "nineteen" }

    tens = {"2" => "twenty"}


    reversed_input_array = self.to_s.split("").reverse()
    number_as_string = self.to_s()
    final_array = []
    final_word = ""
    tens_word = ""
    ones_word = ""
    teens_word = ""
    if reversed_input_array[1] == "1"  #Evaluating teens
      final_array.push(teens.fetch(number_as_string))
    else #Evaluating everything besides teens
      if tens.include?(reversed_input_array[1])
        final_array.push(tens.fetch(reversed_input_array[1]))
      end

      if ones.include?(reversed_input_array[0])
        final_array.push(ones.fetch(reversed_input_array[0]))
      end
    end
    final_array.join(" ")
  end
end
