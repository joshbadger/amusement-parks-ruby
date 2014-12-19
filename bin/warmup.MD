numbers = [9, 5, 6, 2, 1, 8, 7, 4, 3]
result = nil
numbers.each do |number|
if result
result += number if number.even?
else
result = number if number.even?
end
# what does `result` evaluate to right here???
end
result = 8
Without running in IRB, what's the value of result for each iteration? Copy the following code:

9 = nil
5 = nil
6 = 6
2 = 8
1 = 8
8 = 16
7 = 16
4 = 20
3 = 20
