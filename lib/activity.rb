class Activity

  attr_reader :name, :participant_hash, :participant, :amount_paid

  def initialize(name, participant_hash)
    @name = name
    @participant_hash = participant_hash
    @participant = participant_hash[:name]
    @amount_paid = participant_hash[:amount]
  end

end
