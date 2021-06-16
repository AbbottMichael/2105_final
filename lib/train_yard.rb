class TrainYard
  attr_reader :location, :trains

  def initialize(data_hash)
    @location = data_hash[:location]
    @trains = []
  end

  def add_train(train)
    @trains << train
  end

  def types_of_trains
    @trains.map do |train|
      train.type
    end.uniq.sort
  end

  def trains_containing(car_input)
    @trains.flat_map do |train|
      train.cargo.keys.filter_map do |car|
        train if car_input == car
      end
    end
  end

  def sorted_cargo_list
    @trains.flat_map do |train|
      train.cargo.keys.map do |car|
        car.type
      end
    end.uniq.sort
  end

  def total_inventory
    @trains.group_by do ||
  end
end
