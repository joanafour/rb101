def mutate!(arr)
  arr.each  do  |element|
    if element % 2 == 0
      arr.delete(element)
      p arr
    end

  end
end

arr = [1,2,12,4,4,6,8,9] # would have 8 iterations but only does 4
p mutate!(arr)



=begin

arr = [1,2,12,4,4,6,8,9]
index 0  = (1) no change
=> [1, 2, 12, 4, 4, 6, 8, 9]

^
index 1 = (2)
2 is returned and deleted
=> [1, 12, 4, 4, 6, 8, 9]

^
index 2 = (4) SKIPS 12
(since there are 2 instances of 4 delete method deletes both instances)
4 is returned and deleted
=> [1, 12, 6, 8, 9]

^
index 3 = (8) SKIPS 6
8 is returned and deleted
=> [1, 12, 6, 9]

^
no index 4 SKIPS 9

=end
