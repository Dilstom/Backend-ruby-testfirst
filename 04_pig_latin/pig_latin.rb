#write your code here

def translate(sentence)
  vowels = ['a', 'e', 'i', 'o', 'u']

  arr_words = sentence.split
  result = ''
  arr_words.each do |word|
    if vowels.include?(word[0].downcase)
    result += word
    elsif word.slice(0,2) == 'qu'  # or word[0..2]
      result += (word.slice(2...) + 'qu')
    elsif vowels.include?(word[1].downcase)
      result += (word.slice(1..) + word[0])
    elsif word.slice(1,2) == 'qu'
      result += (word.slice(3..) + word[0] +'qu')
    elsif vowels.include?(word[2].downcase)
      result += (word.slice(2..) + word.slice(0,2))
    else
      result += (word.slice(3..) + word.slice(0,3))
    end
    result += 'ay '
  end

  result.strip
end