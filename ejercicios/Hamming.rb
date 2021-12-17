class Hamming


  def self.compute(first_stand, second_stand)
    if first_stand.length != second_stand.length
      raise ArgumentError, "strand_one and strand_two must have equal lengths."
    end

    counter = 0
    first_stand.each_char.with_index do |char, index|

     counter += 1 if char != second_stand[index]
    end
    p counter
  end

end

ham = Hamming.compute("EEEAA", "SSAAS")
