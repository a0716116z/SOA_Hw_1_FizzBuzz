# frozen_string_literal: true

## write your fizzbuzz method in this file
# see http://en.wikipedia.org/wiki/Fizz_buzz for details on FizzBuzz game

# def fizzbuzz(num)
#   arr = []
#   if block_given?
#     (1..num).each do |k|
#       if (k % 15).zero? then arr.push(yield('FizzBuzz').to_s)
#       elsif (k % 5).zero? then arr.push(yield('Buzz').to_s)
#       elsif (k % 3).zero? then arr.push(yield('Fizz').to_s)
#       else
#         arr.push(yield(k.to_s))
#       end
#     end
#   else

#     (1..num).each do |k|
#       if (k % 15).zero? then arr.push('FizzBuzz'.to_s)
#       elsif (k % 5).zero? then arr.push('Buzz'.to_s)
#       elsif (k % 3).zero? then arr.push('Fizz'.to_s)
#       else
#         arr.push(k.to_s)
#       end
#     end
#   end
#   arr
# end

# def fizzbuzz(num)
#   arr = []
#   (1..num).each do |k|
#     if (k % 15).zero? then arr.push(block_given? ? yield('FizzBuzz').to_s : 'FizzBuzz')
#     elsif (k % 5).zero? then arr.push(block_given? ? yield('Buzz').to_s : 'Buzz')
#     elsif (k % 3).zero? then arr.push(block_given? ? yield('Fizz').to_s : 'Fizz')
#     else
#       arr.push(block_given? ? yield(k.to_s) : k.to_s)
#     end
#   end
#   arr
# end
def fizzbuzz(num)
  arr = []
  (1..num).each do |k|
    block_given? ? arr.push(yield(decide_buzz(k))) : arr.push(decide_buzz(k))
  end
  arr
end

def decide_buzz(index)
  return 'FizzBuzz' if (index % 15).zero?
  return 'Buzz' if (index % 5).zero?
  return 'Fizz' if (index % 3).zero?

  index.to_s
end
puts fizzbuzz(30)
puts fizzbuzz(30) { |item| "-#{item}-" }
