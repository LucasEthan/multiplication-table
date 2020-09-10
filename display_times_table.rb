#!/usr/bin/env ruby
puts "Multiplication table"
puts "Enter dimensionality"
dim = gets.to_i
dim.times do |i|
  dim.times do |j|
    print "#{(i + 1) * (j + 1)}\t"
  end
  puts 
end

