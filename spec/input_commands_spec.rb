RSpec.describe CommandRunner do
	command_runner_test = CommandRunner.new
	context 'when testing \"add\" command' do
	    it "should add input number to the fixed number when user commands \"add\" " do
	 		command_runner_test.input_command_from_user = "add 6.0"
			expect(command_runner_test.run_command).to eq(6.0)
		end
	end
	context 'when testing \"subtract\" command' do
	    it "should subtract input number from the fixed number when user commands \"subtract\" " do
	 		command_runner_test.input_command_from_user = "subtract 2.0"
			expect(command_runner_test.run_command).to eq(4.0)
		end
	end
	context 'when testing \"multiply\" command' do
	    it "should multiply input number to the fixed number when user commands \"multiply\" " do
	 		command_runner_test.input_command_from_user = "multiply 2.0"
			expect(command_runner_test.run_command).to eq(8.0)
		end
	end
	context 'when testing \"divide\" command' do
	    it "should divide fixed number by the input number when user commands \"divide\" " do
	 		command_runner_test.input_command_from_user = "divide 4.0"
			expect(command_runner_test.run_command).to eq(2.0)
		end
	end
	context 'when testing \"cancel \" command' do
	    it "should cancels operations or reset the fixed number when user commands \"cancel\" " do
	 		command_runner_test.input_command_from_user = "cancel"
			expect(command_runner_test.run_command).to eq(0.0)
		end
	end
	context 'when testing \"exit\" command' do
	    it "should exit the program when user commands \"exit\" " do
	 		command_runner_test.input_command_from_user = "exit"
			expect(command_runner_test.run_command).to eq("exit")
		end
	end
end