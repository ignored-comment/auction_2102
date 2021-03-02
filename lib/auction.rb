class Auction

  attr_reader :items

  def initialize
    @items = []
  end

  def add_item(item)
    @items << item
  end

  def unpopular_items
    result = []
    @items.each do |item|
      result << item if item.bids.empty?
    end
    result
  end

  def potential_revenue
    bids = @items.map do |item|
      item.bids.values
    end
    highest_result = bids.map do |value|
      value.max
    end.compact.sum
  end
end
