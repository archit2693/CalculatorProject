RSpec.describe CalculatorUtility do
  it "has a version number" do
    expect(CalculatorModule::VERSION).not_to be nil
  end

  it "adds input numberto the fixed number" do
  	calcutor_test = CalculatorUtility.new
    expect(calcutor_test.add_input_number_to_fixed_number(4.0)).to eq(4.0)
  end
end
