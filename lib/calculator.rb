require_relative "calculator/version"
require_relative "calculator/command_parser"
require_relative "calculator/command_runner"


class Calculator
	
	def fetch_and_run_commands(command_parser_object, command_runner_object, calculator_utility)
		read_command = gets.chomp.to_s
		status, command_strings = command_parser_object.parse_input_command_from_user(read_command)
		if status == "Ok"
			result = command_runner_object.run_command(command_strings[0], command_strings[1], calculator_utility)
		else
			return status
		end
	end
end

command_runner_object = CommandRunner.new
command_parser_object = CommandParser.new
calculator_utility = CalculatorUtility.new
calculator = Calculator.new

loop do
	result = calculator.fetch_and_run_commands(command_parser_object, command_runner_object, calculator_utility)
	puts result
	if result == "Good Bye!"
		break
	end
end
