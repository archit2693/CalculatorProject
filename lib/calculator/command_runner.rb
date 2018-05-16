require_relative "version"
require_relative "calculator_utility"
require_relative "validity_checker"

class CommandRunner
	@@calculator_utility = CalculatorUtility.new
	attr_accessor :input_command_from_user

	def run_command
		split_command_array = input_command_from_user.split(" ")	  
		if(split_command_array.length == 2)
	 		command_string = split_command_array[0]
	 		operand = split_command_array[1]
	    
	 		if(operand.is_integer_or_is_float?)     
	 			operand = operand.to_f     

	 			case command_string 
	 			when "add"
	        		puts @@calculator_utility.add_input_number_to_fixed_number(operand)
	      		when "subtract"
	       		 	puts @@calculator_utility.subtract_input_number_from_fixed_number(operand)
	      		when "multiply"
	        		puts @@calculator_utility.multiply_fixed_number_with_input_number(operand)
	      		when "divide"
	        		if(operand != 0.0)
	          			puts @@calculator_utility.divide_fixed_number_by_input_number(operand)
	        		else
	          			puts "Division by zero is not allowed"
	        		end
	        	else
	        		puts "Sorry, This is an invalid operation."
	      		end
	    	else
	      		puts "Invalid Operand !"
	    	end  
	    
	  else
	    command_string = split_command_array[0]   # When there is no operand

	    case command_string
	    when "cancel"
	      puts @@calculator_utility.cancel_operations()
	    when "exit"
	      puts "Good Bye !"
	      return "exit"
	    else
	      puts "Sorry, This is an invalid operation."
	    end
  	  end
	end
end