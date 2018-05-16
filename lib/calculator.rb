require_relative "calculator/version"
require_relative "calculator/command_runner"

class Calculator
	@@command_runner_object = CommandRunner.new 
	def fetch_and_run_commands
		read_command = gets.chomp.to_s
		@@command_runner_object.input_command_from_user = read_command
		status = @@command_runner_object.run_command 
		return status
	end
end

calculator = Calculator.new
loop do
	status = calculator.fetch_and_run_commands
	if status == "exit"
		break
	end
end
