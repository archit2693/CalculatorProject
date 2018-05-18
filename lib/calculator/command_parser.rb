require_relative "validity_checker"

class CommandParser
  def parse_input_command_from_user(input_command_from_user)
    split_command_array = input_command_from_user.split(" ")
    status = ValidityChecker.check_validity_of_command_strings(split_command_array)
    if  status == "Ok"
      return "Ok", split_command_array
    else
      return status, split_command_array
    end
  end
end
