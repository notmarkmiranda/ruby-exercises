
class Bag
  attr_reader :bag, :candy, :type

  def initialize
    @candies = []
    @taken = []
  end

  def empty?
    @candies.empty?
  end

  def count
    @candies.count
  end

  def candies
    @candies
  end

  def << (candy)
    @candies << candy
  end

  def contains?(candy_type)
    @candies.find { |candy| candy.type.include?(candy_type) }
  end

  def grab(candy_type)
    @candies.slice!(@candies.index{ |candy| candy.type == candy_type })
  end

  def take(num)
    
  end

end
