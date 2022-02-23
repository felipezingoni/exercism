class Isogram


  def self.isogram?(string)
    p letters = string.downcase.scan(/\w/)
    letters == letters.uniq
  end

end

iso =Isogram.isogram?("tarjeta de credito")
p iso
