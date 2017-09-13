require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/activity'

class ActivityTest < Minitest::Test

  attr_reader :activity

  def setup
    participant_hash = {name: 'beth', amount: 5}
    @activity = Activity.new('fun times', participant_hash)
  end

  def test_it_exists
    assert_instance_of Activity, activity
  end

  def test_it_has_name
    assert_equal 'fun times', activity.name
  end

  def test_it_stores_participants_as_hash
    assert_instance_of Hash, activity.participant_hash
  end

  def test_it_has_participant
    assert_equal 'beth', activity.participant
  end

  def test_activity_has_cost
    assert_equal 5, activity.amount_paid
  end
end
