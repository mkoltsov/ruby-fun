class ToDoList
	
	include Enumerable

	attr_accessor :items

	def initialize()
		@items	= []
	end
	
	def each
		@items.each {|item| yield item}
	end		
end

# require "./to_do_list.rb"
# list=ToDoList.new
# list.items="laundry","dishes","vacuum"
# list.items.select{|i| i.length>6}