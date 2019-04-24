require_relative 'poorly_written_ruby'
require_relative 'improving_complexity_version_one'
require_relative 'imrpoving_complexity_version_two'

array_one = [2, 5, 1, 3, 4]
array_two = [7, 6, 9, 8, 10]

start_time = Time.now

complexity_optimized_ruby(array_one, array_two)

end_time = Time.now

start_time.to_f
end_time.to_f

total_time = end_time - start_time

puts total_time.to_f
