def build_array(first, second, third) 
  [first, second, third]
end

def add_to_array(array, element)
  array << element
end


example = []
p example

example << "item"
example << "fruit basket"
example << "books"
example << "vase of flowers"
example << "TV"
p example

example.delete_at(2)
p example

example.insert(2, "candles")
p example

example.shift
p example

p "Does it include 'vase of flowers'"
if example.include?("vase of flowers")
  p 'yes'
else
  p 'no'
end

p build_array(1, "two", nil)
p add_to_array([], "a")
p add_to_array([], example)
p add_to_array(example, "cell phone")