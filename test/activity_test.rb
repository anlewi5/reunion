require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/activity'

class ActivityTest < Minitest::Test

  attr_reader :activity

  def setup
    participant1_hash = {name: 'beth', amount: 5}
    participant2_hash = {name: 'aaron', amount: 10}
    @activity = Activity.new('fun times', 20)
    
    activity.add_participant(participant1_hash)
    activity.add_participant(participant2_hash)
  end

  def test_it_exists
    assert_instance_of Activity, activity
  end

  def test_activity_has_name
    assert_equal 'fun times', activity.name
  end

  def test_activity_has_total_cost
    assert_equal 20, activity.total_cost
  end

  def test_activity_stores_participants_as_array_of_hashes
    assert_instance_of Array, activity.participants
    assert_instance_of Hash, activity.participants[0]
  end

  def test_participant_has_name
    assert_equal 'beth', activity.participants[0][:name]
  end

  def test_participant_has_amount_paid
    assert_equal 5, activity.participants[0][:amount]
  end

end
