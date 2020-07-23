def get_name 
    print "enter your name: "
    name = gets.chomp
    yield name 
end 

get_name do |name|
    puts "That's a cool name, #{name}!"
end 