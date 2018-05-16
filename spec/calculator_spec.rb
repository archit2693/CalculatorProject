RSpec.describe CalculatorUtility do
 
    calcutor_test = CalculatorUtility.new

	it " should add input number to the fixed number" do
		expect(calcutor_test.add_input_number_to_fixed_number(4.0)).to eq(4.0)
	end

	it "should subtract input number from the fixed number" do
	    expect(calcutor_test.subtract_input_number_from_fixed_number(2.0)).to eq(2.0)
	end
	  
	it "should multiply input number to the fixed number" do
	    expect(calcutor_test.multiply_fixed_number_with_input_number(2.0)).to eq(4.0)
	end
	  
	it "should divide fixed number by the input number" do
	    expect(calcutor_test.divide_fixed_number_by_input_number(4.0)).to eq(1.0)
	end
	  
	it "should cancels operations or reset the fixed number" do
	    expect(calcutor_test.cancel_operations).to eq(0.0)
	end
end
