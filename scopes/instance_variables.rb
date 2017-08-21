class SomeClass
	attr_reader :var
	def lets_mutate_it(var)
		puts "#{self}"
		@var=var
	end
	@var = "Pupa"
	puts "#{self}"
end

class SomeClass1
	@@var = "dupa"
	def lets_mutate_it(var)
		@@var=var
	end

	def show_me
		@@var
	end	

end

instance = SomeClass.new
instance.lets_mutate_it("dupa")
puts instance.var

inst2 = SomeClass1.new
inst2.lets_mutate_it("XOX")
puts inst2.show_me

