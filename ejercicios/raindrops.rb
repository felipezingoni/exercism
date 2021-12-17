class Raindrops

  RAINDROPS = {3 => "Pling", 5 => "Plang", 7 => "Plong"}


 def self.convert(number)
   conversion  = ""
    RAINDROPS.each {|key, value|  conversion += value if  number % key == 0 }
    conversion.empty? ? number.to_s : conversion
 end

end

p Raindrops.convert(12)
