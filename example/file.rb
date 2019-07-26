#read file
f = File.new("b1.rb","r")
if f
    content = f.sysread(20) 
    puts content   
else
    puts "Khong tim thay file"
end

 #write file
 f = File.new("b1.rb","r+")
if f
    content = f.syswrite('#test_write file') 
else
    puts "Khong the mo file"
end
