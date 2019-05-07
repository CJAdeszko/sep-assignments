require_relative 'poorly_written_ruby'
require_relative 'improving_complexity_version_one'
require_relative 'improving_complexity_version_two'
require_relative 'improving_complexity_version_three'

array_one = [2, 5, 1, 3, 4]
array_two = [7, 6, 9, 8, 10]


#Porrly Written
poor_start_time = Time.now

poorly_written_ruby(array_one, array_two)

poor_end_time = Time.now

poor_start_time.to_f
poor_end_time.to_f

poor_total_time = poor_end_time - poor_start_time

puts poor_total_time.to_f


#Version One
start_time = Time.now

optimized_ruby(array_one, array_two)

end_time = Time.now

start_time.to_f
end_time.to_f

total_time = end_time - start_time

puts total_time.to_f


#Version Two
start_time_two = Time.now

complexity_optimized_ruby(array_one, array_two)

end_time_two = Time.now

start_time_two.to_f
end_time_two.to_f

total_time_two = end_time_two - start_time_two

puts total_time_two.to_f


#Version Three
start_time_three = Time.now

space_optimized_ruby(array_one, array_two)

end_time_three = Time.now

start_time_three.to_f
end_time_three.to_f

total_time_three = end_time_three - start_time_three

puts total_time_three.to_f
