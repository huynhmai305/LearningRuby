h = Hash.new
# h[:key] = "value"
# h
# h[:key]
# h.has_key?(:key)
# h.has_value?("value")
# h.keys
# h.values 

h3 = { "a" => 100, "b" => 200, "c" => 300 }
h3.select {|k,v| k > "b"} 
puts h3.select {|k,v| k > "b"} 