require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1 = Store.find(1)
@store2 = Store.find(2)

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Helen", last_name: "Helen", hourly_rate: 50)
@store1.employees.create(first_name: "Kim", last_name: "Jong Un", hourly_rate: 1000)

@store2.employees.create(first_name: "Donald", last_name: "Trump", hourly_rate: 30)
@store2.employees.create(first_name: "Justin", last_name: "Trudeau", hourly_rate: 50)
@store2.employees.create(first_name: "Ze Dong", last_name: "Lmao", hourly_rate: 1900)

