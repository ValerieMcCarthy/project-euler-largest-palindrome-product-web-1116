# Implement your object-oriented solution here!
class LargestPalindromeProduct
  attr_accessor :answer
  def initialize
    @answer = palindrome_product
  end

  def is_palindrome?(input)
    input.to_s == input.to_s.reverse
  end

  def palindrome_product
    max = 0

    (100..999).each do |a|
      (100..999).each do |b|
        product = a * b
        if is_palindrome?(product) && product > max
          max = product
        end
      end
    end
    max
  end
end