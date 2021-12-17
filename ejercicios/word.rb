class Word
  def initialize(string)
    @string = string
  end

  def word_count
    word_arr = @string.downcase.gsub(/[@#$%!&:,."^]/, " ").strip.split(" ")
    counter = {}
    word_arr.each do |word|
      number = word_arr.count(word)
      counter[word] = number
    end
    p counter
  end

end

num = Word.new(" Hola PPEEI, QUe onda? que Vas hacer PPEEi")
p num.word_count
