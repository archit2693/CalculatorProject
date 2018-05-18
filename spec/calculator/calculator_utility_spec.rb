RSpec.describe CalculatorUtility do
  it " should add input number to the fixed number" do
    calcutor_test = CalculatorUtility.new
    expect(calcutor_test.add_input_number_to_fixed_number(4.0)).to eq(4.0)
  end

  it "should subtract input number from the fixed number" do
    calcutor_test = CalculatorUtility.new
    expect(calcutor_test.subtract_input_number_from_fixed_number(2.0)).to eq(-2.0)
  end
  
  it "should multiply input number to the fixed number" do
    calcutor_test = CalculatorUtility.new 2.0
    expect(calcutor_test.multiply_fixed_number_with_input_number(2.0)).to eq(4.0)
  end
  
  it "should divide fixed number by the input number" do
    calcutor_test = CalculatorUtility.new 4.0
    expect(calcutor_test.divide_fixed_number_by_input_number(4.0)).to eq(1.0)
  end
  
  it "should cancels operations or reset the fixed number" do
    calcutor_test = CalculatorUtility.new 4.0
    expect(calcutor_test.cancel_operations).to eq(0.0)
  end

  it "should divide fixed number by the input number" do
    calcutor_test = CalculatorUtility.new 4.0
    expect(calcutor_test.divide_fixed_number_by_input_number(4.0)).to eq(1.0)
  end

  it "should make fixed number absolute" do
    calcutor_test = CalculatorUtility.new -4.0
    expect(calcutor_test.make_fixed_number_absolute()).to eq(4.0)
  end

  
  it "should negate fixed number" do
    calcutor_test = CalculatorUtility.new 4.0
    expect(calcutor_test.negate_fixed_number()).to eq(-4.0)
  end

  
  it "should compute square root of the fixed number" do
    calcutor_test = CalculatorUtility.new 4.0
    expect(calcutor_test.square_root_of_fixed_number()).to eq(2.0)
  end

  
  it "should square the fixed number" do
    calcutor_test = CalculatorUtility.new 4.0
    expect(calcutor_test.square_the_fixed_number()).to eq(16.0)
  end
  
  it "should compute cure root of the fixed number" do
    calcutor_test = CalculatorUtility.new 8.0
    expect(calcutor_test.cube_root_of_fixed_number()).to eq(2.0)
  end
  it "should cube the fixed number" do
    calcutor_test = CalculatorUtility.new 2.0
    expect(calcutor_test.cube_the_fixed_number()).to eq(8.0)
  end

  

end
