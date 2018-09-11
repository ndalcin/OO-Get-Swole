# Get a list of all memberships
#         Membership.all

class Membership
  @@all = []

  attr_accessor :lifter, :gym, :membership_cost

  def initialize(lifter, gym, membership_cost)
    @lifter = lifter # instance of lifter class
    @gym = gym # instance of gym class
    @membership_cost = membership_cost # number
    @@all << self
  end

  def self.all
    @@all
  end
end
