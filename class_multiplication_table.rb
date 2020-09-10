class Multiplication_table
  attr_accessor :dim
  def initialize(dim)
    @dim = dim
  end

  def calculate_number
    dim.times do |i|
      dim.times do |j|
         print "#{(i + 1) * (j + 1)}\t"
      end
      puts
    end
  end
  def controls_dimensionality
    if dim.negative?
      puts "You have entered a invalid dimensionality"
    elsif dim.zero?
      puts "You have entered a invalid dimensionality"
    end
  end
end
