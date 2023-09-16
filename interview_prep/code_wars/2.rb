# output: none
# return: number of pairs in an array

def pairs(arr)
  b = []
  pairs = 0
  arr.flatten
  arr.each do |char|
    b << arr.count(char) # why won't this do the last number???
    arr.delete(char)
  end
p arr
p b
    b.each do |num|
    if num >= 2
      num = num / 2
      pairs += num
    end

  end
pairs
 end



 p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2])