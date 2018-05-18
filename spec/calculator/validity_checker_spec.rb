RSpec.describe ValidityChecker do
  context 'when testing invalid commands' do

    it "should raise error if command is invalid" do
      status = ValidityChecker.check_validity_of_command_strings("blah".split(" "))
      expect(status).to eq "Sorry, this is an invalid operation."
    end

    it "should not raise error if command is valid one length command" do
      status = ValidityChecker.check_validity_of_command_strings("cancel".split(" "))
      expect(status).to eq "Ok"
    end

    it "should not raise error if command is valid two length command" do
      status = ValidityChecker.check_validity_of_command_strings("add 2.0".split(" "))
      expect(status).to eq "Ok"
    end
    
    it "should raise error if command is invalid and operand is valid" do
      status = ValidityChecker.check_validity_of_command_strings("blah 2.0".split(" "))
      expect(status).to eq "Sorry, this is an invalid operation."
    end


    it "should raise error if operand is invalid" do
      status = ValidityChecker.check_validity_of_command_strings("add blah".split(" "))
      expect(status).to eq "Invalid Operand!"
    end
  end
end
