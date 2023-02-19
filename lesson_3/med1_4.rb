def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element) # [1, 2, 3, 4], 5, [5, 6, 7, 8]
  buffer = input_array + [new_element] # buffer = [1, 2, 3, 4, 5, 6, 7, 8]
  buffer.shift if buffer.size > max_buffer_size  #[1]
  buffer #[5, 6, 7, 8]
end

# the second definition will not