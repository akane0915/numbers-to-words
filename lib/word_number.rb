class Fixnum
  define_method(:word_number) do
    ones = {"one" => 1, "two" => 2, "three" => 3, "four" => 4, "five" => 5, "six" => 6, "seven" => 7, "eight" => 8, "nine" => 9}
    tens = {"ten" => 10}
    if ones.invert().include?(self) 
      ones.key(self)
    else
      tens.key(self)
    end
  end
end
