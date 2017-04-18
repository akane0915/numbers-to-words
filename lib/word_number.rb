class Fixnum
  define_method(:word_number) do
    words = [
      {"one" => 1, "two" => 2, "three" => 3, "four" => 4, "five" => 5, "six" => 6, "seven" => 7, "eight" => 8, "nine" => 9},

      {"ten" => 10, "eleven" => 11, "twelve" => 12, "thirteen" => 13, "fourteen" => 14, "fifteen" => 15, "sixteen" => 16, "seventeen" => 17, "eighteen" => 18, "nineteen" => 19, "twenty" => 20}
    ]

    # words.each_with_index() do |hash,index|
    if words[0].invert().include?(self)
      words[0].key(self)
    else
      words[1].key(self)
    end
  end
end
