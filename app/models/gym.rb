
class Gym
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select do |membership|
      membership.gym == self
    end
  end

  def lifters
    memberships.map(&:lifter)
  end

  def lifters_names
    lifters.map(&:name)
  end
  #   - Get the combined lift_total of every lifter who has a membership to that gym
  #         Gym#lift_total

  def lift_total
    total = 0
    lifters.each do |lifter|
      total += lifter.lift_amount
    end
    total
  end
end
