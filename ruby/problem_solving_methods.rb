array = [10, 20, 30, 40, 50]


def search_array(array, x)
  counter = 0
  array.each do |number|
    if number == x
    return counter
    end
    counter += 1
  end
  if counter == (array.length - 1)
    return NIL
  end
end

#p search_array(array, 50)



def fib(num)
 array = [0, 1,]
  until array.length == num
  number = (array[-2] + array[-1])
  array.push(number)
end
array 
end

fib(100)

if fib(100)[-1] == 218922995834555169026
  puts "it works"
end

#get access to every item,compare the first two elements in the array.if the first element is greater than the second swap then.
#if it"s not greater do nothing get the second and the third and compare and do that one and over again until the end.
#if we get to the end repeat everything again.we stop when we swap nothing.


