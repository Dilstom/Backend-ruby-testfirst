class Book
  # write your code here
  attr_accessor :title

  def initialize
    @title = ""
  end

  def title=(str)
    list_of_small_words = ['a', 'an', 'the', 'or', 'nor', 'but', 'so', 'for', 'on', 'to', 'by', 'and', 'over', 'of', 'in'] # ... more

    arr_words = str.split
    result = ""

    arr_words.each_with_index do |word, i|
      if i == 0 || i == arr_words.length - 1 || !list_of_small_words.include?(word)
        result += word.capitalize
      else
        result +=word
      end
      result += " " 
    end
    @title = result.strip
  end
end
