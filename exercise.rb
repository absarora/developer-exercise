class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    # sample_str = "Ready to work in the jungle - future Jaguar"
    # if length of each word > 4, replace the word with "marklar"
      ## if the word is capitalized, replace the word with "Marklar" instead
      ## keep end-of-word punctuation intact

    alphabets = *('A'..'Z')
    punctuation = %w(. , : ; ? !)
    array = str.split().map do |word|
      capital_letter_check = alphabets.select { |capital_letter| word[0] == capital_letter }
      punctuation_check = punctuation.select { |pun| word[-1] == pun }
      if word.length > 4 && !capital_letter_check.empty?
        if !punctuation_check.empty?
          word.replace('Marklar') + punctuation_check.first
        else
          word.replace('Marklar') 
        end
      elsif word.length > 4
        if !punctuation_check.empty?
          word.replace('marklar') + punctuation_check.first
        else
          word.replace('marklar') 
        end
      else
        word
      end
    end.join(' ')
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    # fibArray[]
    # fibArray[0] = 1
    # fibArray[1] = 1
    
    fibArray = [1,1]
    # sum = 0
    ( 2...nth ).map { |i| fibArray[i] = fibArray[i - 2] + fibArray[i - 1] }
    # fibArray.each { |num| sum += num if num % 2 == 0 }

    fibArray.select(&:even?).reduce(:+)
    # p "sum: #{sum}"
    # sum
  end

end
