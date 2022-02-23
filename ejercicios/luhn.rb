class Luhn
  attr_reader :number
  def initialize(number)
    @number = number
  end

  def digits
    number.scan(/\d/).map(&:to_i)
  end




  def valid?
    return false if too_short? or includes_symbol?
  end


  def too_short?
    digits.size <= 1
  end

  def includes_symbol?
    number.scan(/[\d]/).size != number.size
  end


  def checksum
    p digits.reverse.each_slice(2).sum{|even,odd = 0| even + (odd) }
  end

end


lu = Luhn.new("29993999299 !22")
p lu.digits


p lu.checksum
