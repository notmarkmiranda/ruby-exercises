class Bag
  attr_reader :candies

  def initialize
    @candies = []
  end

  def empty?
    @candies.empty?
  end

  def count
    @candies.size
  end

  def <<(candy)
    @candies << candy
  end

  def contains?(type)
    @candies.map do |candy|
      candy.type == type
    end.any? { |item| item == true }
  end

end
