RSpec.describe CommandParser do
  context 'when testing invalid commands' do
    it "should return Ok and splited array when user inputs valid command" do
      command_parser_object = CommandParser.new
      status, split_array = command_parser_object.parse_input_command_from_user("add 2.0")
      expect(status).to eq("Ok")
      expect(split_array).to eq(["add", 2.0])
    end

    it "should return error if command is invalid along with splited array" do
      command_parser_object = CommandParser.new
      status, split_array = command_parser_object.parse_input_command_from_user("blah blah")
      expect(status).to eq("Sorry, this is an invalid operation.")
      expect(split_array).to eq("blah blah".split(" "))
    end
  end
end
