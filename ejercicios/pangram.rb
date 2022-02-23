class Pangram
  LETTERS =  %w|
   q w e r t y u i o p
    a s d f g h j k l
     z x c v b n m
  |

  def initialize(sentences)
    @sentences = sentences
  end

  def search
    p @sentences
    p LETTERS
    LETTERS.all? {|letter| @sentences.include?(letter) }
  end

end

tuc = Pangram.new("The quick brown fox jumps over the lazy dog")
p tuc.search
