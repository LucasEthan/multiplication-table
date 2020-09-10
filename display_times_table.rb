#!/usr/bin/env ruby

require_relative "class_multiplication_table"
begin
  loop do
    dim = Multiplication_table.new(dim) 
    puts "Multiplication table"
    print "Enter dimensionality: "
    dim = Integer(gets)
    if dim.negative?
      puts "You have entered a invalid dimensionality"
      elsif dim.zero?
        puts "You have entered a invalid dimensionality"
      end
    dim = Multiplication_table.new(dim)
    dim.calculate_number

  print "Do you want to quit [y/n]?: "
  choice = gets.chomp.upcase

  break if choice == "Y"
end
rescue ArgumentError => e
  puts "You have entered a invalid dimensionality"
end
