class Train
  attr_reader :name, :type, :cargo

  def initialize(data_hash)
    @name = data_hash[:name]
    @type = data_hash[:type]
    @cargo = Hash.new(0)
  end

  def count_cars(car)
    @cargo[car]
  end

  def add_cars(car, quantity)
    @cargo.merge!(car => quantity){ |car, qty1, qty2| qty1 + qty2 }
  end

  def weight
    @cargo.inject(0) do |sum, (car,qty)|
      sum += car.weight * qty
    end
  end
end
