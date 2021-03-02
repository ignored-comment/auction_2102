require 'minitest/autorun'
require 'minitest/pride'
require './lib/item'
require './lib/attendee'

class ItemTest < Minitest::Test
  def test_it_exists
    item1 = Item.new('Chalkware Piggy Bank')
    assert_instance_of Item, item1
  end

  def test_it_has_readable_attributes
    item1 = Item.new('Chalkware Piggy Bank')
    assert_equal "Chalkware Piggy Bank", item1.name
    result = {}
    assert_equal result, item1.bids
  end

  def test_it_can_bid_items
    item1 = Item.new('Chalkware Piggy Bank')
    attendee1 = Attendee.new(name: 'Megan', budget: '$50')
    attendee2 = Attendee.new(name: 'Bob', budget: '$75')
    result = {}
    assert_equal result, item1.bids

    item1.add_bid(attendee2, 20)
    item1.add_bid(attendee1, 22)
    result = {
      attendee2 => 20,
      attendee1 => 22
    }
    assert_equal result, item1.bids
  end

  def test_it_can_return_current_high_bid
    item1 = Item.new('Chalkware Piggy Bank')
    attendee1 = Attendee.new(name: 'Megan', budget: '$50')
    attendee2 = Attendee.new(name: 'Bob', budget: '$75')
    result = {}

    item1.add_bid(attendee2, 20)
    item1.add_bid(attendee1, 22)
    result = {
      attendee2 => 20,
      attendee1 => 22
    }
    assert_equal 22, item1.current_high_bid
  end
end
