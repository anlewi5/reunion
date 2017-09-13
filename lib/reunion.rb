class Reunion

  attr_reader :location, :activities

  def initialize(location)
    @location = location
    @activities = []
  end

  def add_activity(activity)
    @activities << activity
  end

  def total_cost
    total_cost = 0
    activities.each do |activity|
      total_cost += activity.total_cost
    end
    total_cost
  end

  #not tested below
  #goal: make hash of hashes
  #<activity => <participant => owes, other_participant => owes>>

  def debt
    activity_hash = {}
    activities.each do |activity|
      owed_hash = make_owed_hash
      activity_hash[activity] = owed_hash
    end
    activity_hash
  end

  def make_owed_hash(activity)
    activity.participants.map do |participant|
      {participant[:name] => participant[:amount]}
    end
  end

end
