class Fixnum
  define_method(:word_number) do
    ones = {"one" => 1}
    ones.key(self)

  end
end
