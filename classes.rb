class SomeName
	attr_accessor :name
	attr_writer :color
	attr_reader :legs, :arms
	@@species=["cat", "dog", "cow"]
	@@total_animals=0
	@@current_animals=[]

	def self.species
		@@species
	end

	def self.species=(array=[])
		@@species = array
	end

    def self.current_animals
		@@current_animals
	end

	def self.create_with_attributes(noise, color)
		animal=self.new(noise)
		animal.color=color
		return animal
	end

	def noise=(noise)
		@noise=noise
	end

	def initialize(noise, legs=2, arms=2 )
		@noise=noise
		@legs=legs
		@arms=arms
		puts "new animal"
		@@total_animals+=1
		@@current_animals << self 
	end



	def noise
		@noise
	end

	def color 
		"color is equal to #{@color}"	
	end	
end

class Cow < SomeName
	def color 
		"The cow's color is #{@color}."
	end	

	def color 
		"My color is #{@color}."
	end	
end	

class Pig < SomeName
	def noise
		# super
	 	 "hello and #{super}"
	 end 
	
	
end
SomeName.species=["frog", "fish"]
puts SomeName.species.inspect

inst=SomeName.new("Moo")
inst.noise="Moo111"
# inst.set_noise("Moo111")
puts inst.noise

inst.name="Steve"
puts inst.name
inst.color="red"
puts inst.color
# inst.setup_limbs
puts "#{inst.legs} - #{inst.arms}"
animal2 = SomeName.create_with_attributes("Quack", "black")
puts "#{animal2.noise} has #{animal2.color}"
puts SomeName.current_animals.inspect

maisie = Cow.new("Moo")
puts maisie.noise

puts animal2.class 
puts maisie.class 

maisie2 =  Cow.create_with_attributes("Moo123", "ginger")

puts maisie2.class
puts maisie2.color

# class Array
#    def to_s
#     self.join(', ')
#    end
# end

pig = Pig.new("Oink")

puts pig.noise
