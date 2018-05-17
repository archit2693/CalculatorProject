RSpec.describe CommandRunner do
	command_runner_test = CommandRunner.new
	context 'when testing \"add\" command' do
	    it "should add input number to the fixed number when user commands \"add\" " do
	    	calcutor_test = CalculatorUtility.new
			expect(command_runner_test.run_command("add", 6, calcutor_test)).to eq(6.0)
		end
	end
	context 'when testing \"subtract\" command' do
	    it "should subtract input number from the fixed number when user commands \"subtract\" " do
	 		calcutor_test = CalculatorUtility.new
			expect(command_runner_test.run_command("subtract", 6, calcutor_test)).to eq(-6.0)
		end
	end
	context 'when testing \"multiply\" command' do
	    it "should multiply input number to the fixed number when user commands \"multiply\" " do
	 		calcutor_test = CalculatorUtility.new 1.0
			expect(command_runner_test.run_command("multiply", 6, calcutor_test)).to eq(6.0)
		end
	end
	context 'when testing \"divide\" command' do
	    it "should divide fixed number by the input number when user commands \"divide\" " do
	 		calcutor_test = CalculatorUtility.new 6
			expect(command_runner_test.run_command("divide", 2, calcutor_test)).to eq(3.0)
		end

		it "should raise error if input number is 0" do
			calcutor_test = CalculatorUtility.new 4.0
		    expect(command_runner_test.run_command("divide", 0.0, calcutor_test)).to eq("Division by zero is not allowed")
		end
	end
	context 'when testing \"cancel \" command' do
	    it "should cancels operations or reset the fixed number when user commands \"cancel\" " do
	 		calcutor_test = CalculatorUtility.new 4.0
			expect(command_runner_test.run_command("cancel", "", calcutor_test)).to eq(0.0)
		end
	end
	context 'when testing \"exit\" command' do
	    it "should exit the program when user commands \"exit\" " do
	 		calcutor_test = CalculatorUtility.new
			expect(command_runner_test.run_command("exit", "", calcutor_test)).to eq("Good Bye!")
		end
	end

	context 'when testing \"abs\" command' do
	    it "hould make fixed number absolute when user commands \"abs\" " do
	 		calcutor_test = CalculatorUtility.new -4.0
			expect(command_runner_test.run_command("abs", "", calcutor_test)).to eq(4.0)
		end
	end

	context 'when testing \"neg\" command' do
	    it "should make fixed number negate when user commands \"neg\" " do
	 		calcutor_test = CalculatorUtility.new 4.0
			expect(command_runner_test.run_command("neg", "", calcutor_test)).to eq(-4.0)
		end
	end

	context 'when testing \"sqrt\" command' do
	    it "should make fixed number square rooted when user commands \"sqrt\" " do
	 		calcutor_test = CalculatorUtility.new 4.0
			expect(command_runner_test.run_command("sqrt", "", calcutor_test)).to eq(2.0)
		end
	end

	context 'when testing \"sqr\" command' do
	    it "should square the fixed number when user commands \"sqr\" " do
	 		calcutor_test = CalculatorUtility.new 4.0
			expect(command_runner_test.run_command("sqr", "", calcutor_test)).to eq(16.0)
		end
	end

	context 'when testing \"cubert\" command' do
	    it "should make fixed number cube rooted when user commands \"cubert\" " do
	 		calcutor_test = CalculatorUtility.new 8.0
			expect(command_runner_test.run_command("cubert", "", calcutor_test)).to eq(2.0)
		end
	end

	context 'when testing \"cube\" command' do
	    it "should exit the program when user commands \"cube\" " do
	 		calcutor_test = CalculatorUtility.new 2.0
			expect(command_runner_test.run_command("cube", "", calcutor_test)).to eq(8.0)
		end
	end

	context 'when testing invalid commands' do

	    it "should raise error if command is invalid" do
	    	command_parser_object = CommandParser.new
	    	status, split_array = command_parser_object.parse_input_command_from_user("blah")
			expect(status).to eq "Sorry, this is an invalid operation."
			expect(split_array).to eq "blah".split(" ")
		end

		it "should not raise error if command is valid one length command" do
	    	command_parser_object = CommandParser.new
	    	status, split_array = command_parser_object.parse_input_command_from_user("cancel")
			expect(status).to eq "Ok"
			expect(split_array).to eq "cancel".split(" ")
		end

		it "should not raise error if command is valid two length command" do
	    	command_parser_object = CommandParser.new
	    	status, split_array = command_parser_object.parse_input_command_from_user("add 2.0")
			expect(status).to eq "Ok"
			expect(split_array).to eq ["add", 2.0]
		end
		
		it "should raise error if command is invalid and operand is valid" do
	    	command_parser_object = CommandParser.new
	    	status, split_array = command_parser_object.parse_input_command_from_user("blah 2.0")
			expect(status).to eq "Sorry, this is an invalid operation."
			expect(split_array).to eq "blah 2.0".split(" ")
		end


		it "should raise error if operand is invalid" do
	 		command_parser_object = CommandParser.new
	    	status, split_array = command_parser_object.parse_input_command_from_user("add blah")
			expect(status).to eq "Invalid Operand!"
			expect(split_array).to eq "add blah".split(" ")
		end
	end
end