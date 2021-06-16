class Car
  attr_reader :type, :weight

  def initialize(data_hash)
    @type = data_hash[:type]
    @weight = data_hash[:weight]
  end
end
