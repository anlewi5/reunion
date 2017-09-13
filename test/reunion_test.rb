require 'minitest'
require 'minitest/test'
require 'minitest/autorun'
require './lib/reunion'

class ReunionTest < Minitest::Test

  attr_reader :reunion, :fishing

  def setup
    @reunion = Reunion.new('denver')
    @fishing = Activity.new('fishing', 30)
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
end
