
#   - Get the average lift total of all lifters
#       * Lifter.average_lift

#   - Get the total cost of a specific lifter's gym memberships
#       * Lifter#total_cost

class Lifter
  @@all = []
  attr_accessor :name, :lift_amount

  def initialize(name, lift_amount)
    @name = name # string
    @lift_amount = lift_amount # number
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select do |membership|
      membership.lifter == self
    end
  end

  def gyms
    memberships.collect(&:gym)
  end

  def sign_up(gym, membership_cost)
    Membership.new(self, gym, membership_cost)
  end
end
