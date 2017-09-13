class Activity

  attr_reader :name, :participants, :total_cost

  def initialize(name, total_cost)
    @name = name
    @total_cost = total_cost
    @participants = []
  end

  def add_participant(participant_hash)
    @participants << participant_hash
  end

end


# @participant_hash = participant_hash
# @participant = participant_hash[:name]
# @amount_paid = participant_hash[:amount]
