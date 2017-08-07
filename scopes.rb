def func(name="Pupa")
	puts name
end

@name="fdf"
def my_function
	puts @name
end

func 32
func 
my_function

def over_5?(value=nil)
	return "Exactly 5" of value.to_i==5
	if value.to_i>5
		return "Over 5"
	else
		return "Under 5"
	end
end

arr=1,2,3,4,5			