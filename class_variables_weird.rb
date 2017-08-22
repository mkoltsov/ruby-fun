require 'pry'
class Parent
	@@value=100
end

class Child < Parent
	@@value=200
end

class Parent
 puts @@value
end	

binding.pry

puts 11