class CountElements
  attr_accessor :array

  def initialize(array)
    @array = array
  end

  def perform
    hash = {}
    @array.each do |el|
      hash[el] = @array.count(el)
    end
    hash
  end
end

CountElements.new([0, 4, 2, 1, 0, 2, 5, 5, 5]).perform
