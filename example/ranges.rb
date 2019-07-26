
range1 = (1..10).to_a
range2 = ('bap'..'bat').to_a
n1 = (0..5).to_a
n2 = (0...5).to_a
puts "#{range1}"
puts "#{range2}"
puts "#{n1}"
puts "#{n2}"
#collect sd khi muốn trả về cái j dó vs mỗi giá trị để đc mảng mới
a = [1,2,3,4,5]
b = a.collect{|x| 10*x}
puts b
#print khác vs puts vì puts in xong xuống dòng còn print k xuống dòng
print "Hello World"
print "Good Morning"