def center_of(string)
  if string.size.odd?
  index = string.size / 2
  string.slice(index)
  else
  index = string.size / 2 - 1
  second_index = string.size / 2
  string.slice(index..second_index)
end
end

center_of('I love ruby')
center_of('Launch')