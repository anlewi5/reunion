class Activity

  attr_reader :name,
              :participants,
              :total_cost,
              :participant_cost

  def initialize(name, total_cost)
    @name = name
    @total_cost = total_cost
    @participants = []
  end

  def add_participant(participant_hash)
    @participants << participant_hash
  end

  def split_cost
    @participant_cost = total_cost / participants.length
  end

  def debt(participant_amount)
    participant_cost - participant_amount
  end

end
