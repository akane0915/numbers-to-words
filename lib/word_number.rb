class Fixnum
  define_method(:word_number) do
    words = [
      {"one" => 1, "two" => 2, "three" => 3, "four" => 4, "five" => 5, "six" => 6, "seven" => 7, "eight" => 8, "nine" => 9},

      {"ten" => 10, "eleven" => 11, "twelve" => 12, "thirteen" => 13, "fourteen" => 14, "fifteen" => 15, "sixteen" => 16, "seventeen" => 17, "eighteen" => 18, "nineteen" => 19, "twenty" => 20}
    ]

    final_word = ""
    words.each_with_index() do |hash,index|
      if hash.invert().include?(self)
        final_word = words[index].key(self)
      end
    end
    final_word
  end
end
