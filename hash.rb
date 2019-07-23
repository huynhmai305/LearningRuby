h = { "a" => 100, "b" => 200, "c" => 300, "d" => 300 }
#Kiểm tra chiều dài
puts h.length;
#Kiểm tra value của key
puts h['a']
#Duyệt hash
h.each {|key, value| puts "#{key} is #{value}" }
#Kiểm tra sự tồn tại
puts h.has_key?("a");
puts h.has_key?("z");
puts h.has_value?(300)
puts h.has_value?(400)
#Lấy mảng value
puts h.values
h1 = { "a" => 400, "d" => 200}
#nếu khóa bị trùng lặp, gtrị sẽ được xác định trong hash mới
puts h.merge(h1)
puts h.select { |k,v| k>"a"}
puts h.select { |k,v| v<200 }
#Loại bỏ cặp key-value đầu tiên hoặc gtrị mặc định nếu hash rỗng
h.shift
h.shift
puts h
h.delete("d")
puts h