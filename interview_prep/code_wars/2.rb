def pairs(arr)
  b = []
  pairs = 0
  arr.flatten

  until arr == []
    arr.each do |char|
    p arr
   b << arr.count(char)
   p b
      arr.delete(char)
      p arr
  end
end

    b.each do |num|
    if num >= 2
      num = num / 2
      pairs += num
    end
  end
pairs
 end

 pairs([1, 2, 2, 20, 6, 20, 2, 6, 2])