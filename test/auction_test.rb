require 'minitest/autorun'
require 'minitest/pride'
require './lib/attendee'
require './lib/auction'
require './lib/item'

class AuctionTest < Minitest::Test
  def test_it_exists
    auction = Auction.new
    assert_instance_of Auction, auction
  end

  def test_it_has_readable_attributes
    auction = Auction.new
    assert_equal [], auction.items
  end

  def test_it_can_add_items
    auction = Auction.new
    item1 = Item.new('Chalkware Piggy Bank')
    item2 = Item.new('Bamboo Picture Frame')
    auction.add_item(item1)
    auction.add_item(item2)
    result = [item1, item2]
    assert_equal result, auction.items
  end
end
