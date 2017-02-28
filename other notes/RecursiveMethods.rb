def sum_upto(n)
   return 1 if n == 1
    sum_upto(n-1) + n
end

def append(arr, n)
   return arr if n < 0
    arr << n
    append(arr, n-1)
end

def reverse_append(arr, n)
   return arr if n < 0
    reverse_append(arr, n-1)
    arr << n
    arr
end



def factorial(n)    
    return 1 if n <= 0
    factorial(n-1) * n
end

def palindrome(string)
    if string.length == 1 || string.length == 0
        true
    else
       if string[0] == string[-1]
        palindrome(string[1..-2])
        else
           false
       end
    end
end

def bottles(n)
  if n == 0 
    puts "no more bottles of beer"
  else
    puts n.to_s + " bottles of beer on the wall"
    bottles(n-1)
  end
end

def fib(n)
    return 0 if n == 0
    return 1 if n == 1
    fib(n-1) + fib(n-2)
end

#1, 1, 2, 3, 5, 8, 13, 21, 34, 55...

def flatten(arr, result = [])
   arr.each do |item|
      if item.kind_of?(Array) 
          flatten(item, result)
        else
          result << item
      end
   end
    result
end













    