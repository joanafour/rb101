def not_so_tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga" #a_string_param == pumpkinsrutabaga
  an_array_param += "rutabaga" #an_array_param == %(pumpkins rutabaga)

  return a_string_param, an_array_parama # returns pumpkinsrutabaga, %(pumpkins rutabaga)
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = not_so_tricky_method(my_string, my_array) 

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"