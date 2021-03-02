class Item

  attr_reader :name, :bids

  def initialize(name)
    @name = name
    @bids = {}
  end

  def add_bid(attendee, bid_amount)
    @bids[attendee] = [] if @bids[attendee].nil?
    @bids[attendee] = bid_amount
  end

  def current_high_bid
    @bids.max_by do |attendee, bid|
      bid
    end[1]
  end
end
