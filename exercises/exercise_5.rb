require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

@store_sum = Store.sum(:annual_revenue)
@store_count = Store.count

puts @store_sum
puts @store_sum/@store_count

puts Store.where("annual_revenue >= ?", 1000000).count
