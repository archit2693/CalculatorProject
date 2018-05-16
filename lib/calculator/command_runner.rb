require_relative "version"
require_relative "calculator_utility"

class CommandRunner
	def run_command(command_string, operand, calculator_utility) 
			case command_string
			when "add"
				result = calculator_utility.add_input_number_to_fixed_number(operand)
			when "subtract"
	       		result = calculator_utility.subtract_input_number_from_fixed_number(operand)
	      	when "multiply"
	        	result =  calculator_utility.multiply_fixed_number_with_input_number(operand)
	      	when "divide"
	        	if(operand != 0.0)
	          		result = calculator_utility.divide_fixed_number_by_input_number(operand)
	        	else
	          		error = "Division by zero is not allowed"
	        	end
			when "cancel"
			    result = calculator_utility.cancel_operations()
			when "exit"
			    result = "exit"
			else
			    error = "Sorry, This is an invalid operation or missing operand."
			end 
	end
end