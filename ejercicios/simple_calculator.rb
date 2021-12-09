class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze
  def self.calculate(first_operand, second_operand, operation)

   if !(first_operand.is_a?(Numeric) and second_operand.is_a?(Numeric))
      raise ArgumentError.new('Non numeric operators')
    end

  begin
      raise UnsupportedOperation.new unless ALLOWED_OPERATIONS.include?(operation)
      return "Division by zero is not allowed."if second_operand == 0 && operation == "/"
  end

    cuenta = "#{first_operand} #{operation} #{second_operand}"
    result = first_operand.to_i.send(operation.to_sym,second_operand.to_i)

      if operation == "/" && (first_operand <= 0 || second_operand <= 0)
        return "Division by zero is not allowed."
      elsif (operation == '+')||(operation == '/') || (operation =='*')
       return "#{cuenta} = #{result}"
      elsif  !ALLOWED_OPERATIONS.include?(operation)
       return 'Unsupported operation'
      else
      return 'Should never reach this'
    end



  end
     class UnsupportedOperation < StandardError
     end
end
