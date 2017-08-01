require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Add validations to two models to enforce the following business rules:

# Employees must always have a store that they belong to (can't have an
#   employee that is not assigned a store)



# Ask the user for a store name (store it in a variable)

# Attempt to create a store with the inputted name but leave out the other
#  fields (annual_revenue, mens_apparel, and womens_apparel)

# Display the error messages provided back from ActiveRecord to the user
#  (one on each line) after you attempt to save/create the record

puts "Give a store name:"
print "> "
  store_name = $stdin.gets.chomp

store = Store.new(name: store_name)
store.save
puts store.errors.full_messages

# store = Store.new(name: "Hi",
#                   annual_revenue: -300_000,
#                   mens_apparel: false,
#                   womens_apparel: false)

employee = Employee.new(hourly_rate: 20)
employee.save
employee.errors.full_messages













