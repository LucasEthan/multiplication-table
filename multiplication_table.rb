class DimensionalityError < StandardError
end

class MultiplicationTable
  attr_accessor :dim

  def initialize(dim)
    raise(DimensionalityError, "Dimensionality must be positive, sorry!") unless dim.positive?

    @dim = dim
  end

  def print_table
    dim.times do |i|
      dim.times do |j|
        print "#{(i + 1) * (j + 1)}\t"
      end
      puts
    end
  end
end
