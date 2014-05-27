require_relative 'list'

test_list = List.new
test_list.insert_sorted(1)
test_list.insert_sorted(3)
test_list.insert_sorted(2)
test_list.insert_sorted(5)
test_list.insert_sorted(4)
test_list.insert_sorted(8)
test_list.insert_sorted(7)
test_list.insert_sorted(6)
test_list.insert_sorted(10)
test_list.insert_sorted(9)

test_list.each do |y|
  puts y.data
end

puts "test"