class Phrase

  def initialize(string)
    @string = string
  end

  def word_count
    counter = {}
    words_arr = @string.downcase.gsub(/[@#$%!&:,."^]/, " ").gsub(/( '|' )/, ' ').strip.split(" ")

    p words_arr

    words_arr.each do |w|
      number = words_arr.count(w)
      counter[w] = number
    end
     counter
  end
end

saludo = Phrase.new("hol'a como estas? estoy bien bien. eie perr estoy")
saludo.word_count
