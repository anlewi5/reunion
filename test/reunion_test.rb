require 'minitest'
require 'minitest/test'
require 'minitest/autorun'
require './lib/reunion'

class ReunionTest < Minitest::Test

  attr_reader :reunion, :fishing, :talking

  def setup
    @reunion = Reunion.new('denver')
    @fishing = Activity.new('fishing', 30)
    @talking = Activity.new('talking', 70)
  end

  def test_it_exists
    assert_instance_of Reunion, reunion
  end

  def test_reunion_has_location
    assert_equal 'denver', reunion.location
  end

  def test_it_has_array_of_activites
    assert_instance_of Array, reunion.activities
  end

  def test_it_can_add_activites
    reunion.add_activity(fishing)
    assert_instance_of Array, reunion.activities
    assert_instance_of Activity, reunion.activities[0]
  end

  def test_reunion_has_total_cost
    reunion.add_activity(fishing)
    reunion.add_activity(talking)
    assert_equal 100, reunion.total_cost
  end

  def test_it_knows_how_much_all_participants_are_owed
    # fishing = reunion.add_activity(fishing)
    # talking = reunion.add_activity(talking)
    #
    # participant1_hash = {name: 'beth', amount: 5}
    # participant2_hash = {name: 'aaron', amount: 10}
    #
    # fishing.add_participant(participant1_hash)
    # fishing.add_participant(participant2_hash)
    # talking.add_participant(participant1_hash)
    # talking.add_participant(participant2_hash)

  end
end
