class ValidityChecker
  def self.check_validity_of_command_strings(command_array)
    if command_array.length == 2
      if command_array[0].a_valid_two_length_operation?
	if command_array[1].integer_or_is_float?
	  command_array[1] = command_array[1].to_f
	  return "Ok"
	else
	  return "Invalid Operand!"
	end
      else
	return "Sorry, this is an invalid operation."
      end
    else
      if command_array[0].a_valid_one_length_operation?
	return "Ok"
      else
	return "Sorry, this is an invalid operation."
      end
    end
  end
end

class String
  def integer_or_is_float?
    self.to_f.to_s == self || self.to_i.to_s == self
  end

  def a_valid_two_length_operation?
    valid_two_length_commands_array = ["add", "subtract", "multiply", "divide"]
    valid_two_length_commands_array.include?(self)
  end

  def a_valid_one_length_operation?
    valid_one_length_commands_array = ["cancel", "exit", "abs", "neg", "sqrt", "sqr", "cubert", "cube"]
    valid_one_length_commands_array.include?(self)
  end
end
