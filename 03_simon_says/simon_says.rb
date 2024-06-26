#write your code here

def echo(word)
  word
end

def shout(words)
  words.upcase
end


# USING *ARGS
# *********************
# def repeat(*args)
#   return args[0] + " " + args[0] if args.length == 1
#   str = ""
#   args[1].times {str+=args[0] + " "}
#   str.strip
# end
# *********************

# USING DEFAULT VALUE
def repeat(word, n=2)
  res = "#{word + ' '}" * n
  res.strip
end

def start_of_word(word, n)
  word.slice(0,n)
end

def first_word(str)
  str.slice(0...str.index(' '))
end

def titleize(str)
  # CAPITALIZES ANY WORD
  #  str.split.map {|word| word.capitalize}.join(' ')

  list_of_small_words = ['a', 'an', 'the', 'or', 'nor', 'but', 'so', 'for', 'on', 'to', 'by', 'and', 'over'] # ... more

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
  result.strip
end