# output: none
# return: number of pairs in an array

 def pairs(arr)
  b = []
  pairs = 0
  arr.flatten
  for char in arr do
    b << arr.count(char)
    if arr.include?(char)
      arr.delete(char)
    end
  end
  p b
    b.each do |num|
    if num % 2 == 0
      pairs += num
    end

  end
p pairs/2
 end

Test.assert_equals(pairs([1, 2, 5, 6, 5, 2]), 2)
Test.assert_equals(pairs([1, 2, 2, 20, 6, 20, 2, 6, 2]), 4)
Test.assert_equals(pairs([0, 0, 0, 0, 0, 0, 0]), 3 )
Test.assert_equals(pairs([1000, 1000]), 1)
Test.assert_equals(pairs([]), 0)
Test.assert_equals(pairs([54]), 0)