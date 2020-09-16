#!/usr/bin/env ruby

require_relative "multiplication_table"
loop do
  puts "Multiplication table"
  print "Enter dimensionality: "
  begin
    dim = Integer(gets)
    multiplication_table = MultiplicationTable.new(dim)
    multiplication_table.print_table
  rescue DimensionalityError => e
    puts e.message
  rescue ArgumentError
    puts "You must enter a integer"
  end

  print "Do you want to quit [y/n]?: "
  choice = gets.chomp.upcase

  break if choice == "Y"
end
