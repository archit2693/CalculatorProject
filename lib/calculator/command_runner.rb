require_relative "version"
require_relative "calculator_utility"

class CommandRunner
  def run_command(command_string, operand, calculator_utility) 
    case command_string
    when "add"
      calculator_utility.add_input_number_to_fixed_number(operand)
    when "subtract"
      calculator_utility.subtract_input_number_from_fixed_number(operand)
    when "multiply"
      calculator_utility.multiply_fixed_number_with_input_number(operand)
    when "divide"
      if operand != 0.0
	calculator_utility.divide_fixed_number_by_input_number(operand)
      else
	"Division by zero is not allowed"
      end
    when "abs"
      calculator_utility.make_fixed_number_absolute
    when "neg"
      calculator_utility.negate_fixed_number
    when "sqrt"
      calculator_utility.square_root_of_fixed_number
    when "sqr"
      calculator_utility.square_the_fixed_number
    when "cubert"
      calculator_utility.cube_root_of_fixed_number
    when "cube"
      calculator_utility.cube_the_fixed_number
    when "cancel"
      calculator_utility.cancel_operations
    when "exit"
      result = "Good Bye!"
    end 
  end
end
