# Implement your procedural solution here!

 def largest_palindrome_product
    a = 999
    b = 999
    max_palindrome = 1
    while a > 0
      b = 999
      while b > 0
        product = a * b
          if product.to_s == product.to_s.reverse
            max_palindrome = product if product > max_palindrome
          end
        b -= 1
      end
      a -= 1
    end
    max_palindrome
  end
