class CalculatorUtility
   def initialize(fixed_number = 0.0)
      @fixed_number = fixed_number
   end

   def add_input_number_to_fixed_number(input_number)
      @fixed_number  += input_number
      return @fixed_number  
   end

   def subtract_input_number_from_fixed_number(input_number)
      @fixed_number -= input_number
      return @fixed_number
   end

   def multiply_fixed_number_with_input_number(input_number)
      @fixed_number *= input_number
      return @fixed_number
   end

   def divide_fixed_number_by_input_number(input_number)
      @fixed_number /= input_number
      return @fixed_number
   end

   def cancel_operations
       @fixed_number = 0.0
   end

   def make_fixed_number_absolute
       @fixed_number = @fixed_number.abs
   end

   def negate_fixed_number
       @fixed_number = (-1) * @fixed_number
   end

   def square_root_of_fixed_number
       @fixed_number = Math.sqrt(@fixed_number)
   end

   def square_the_fixed_number
       @fixed_number = @fixed_number * @fixed_number
   end

   def cube_root_of_fixed_number
       @fixed_number = Math.cbrt(@fixed_number)
   end

   def cube_the_fixed_number
       @fixed_number = @fixed_number**3
   end
end
