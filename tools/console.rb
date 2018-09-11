require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

nicole = Lifter.new('Nicole', 300)
paul = Lifter.new('Paul', 50)
bruno = Lifter.new('Bruno', 200)

planet_fitness = Gym.new('Planet Fitness')
la_fitness = Gym.new('LA Fitness')

membership1 = Membership.new(nicole, planet_fitness, 10)
membership2 = Membership.new(nicole, la_fitness, 100)
membership3 = Membership.new(bruno, planet_fitness, 20)
membership4 = Membership.new(paul, la_fitness, 50)

binding.pry

puts "Let's get swole"

#
# **Lifter**
#
#   - Get a list of all lifters
#       * Lifter.all
#
#   - Get a list of all the memberships that a specific lifter has
#       * Lifter#memberships

#   - Get a list of all the gyms that a specific lifter has memberships to
#       * Lifter#gyms
#
#   - Get the average lift total of all lifters
#       * Lifter.average_lift

#   - Get the total cost of a specific lifter's gym memberships
#       * Lifter#total_cost

#   - Given a gym and a membership cost, sign a specific lifter up for a new gym

#        Lifter#sign_up(gym, membership_cost)

# **Membership**
#
#   - Get a list of all memberships
#         Membership.all

# **Gym**
#
#   - Get a list of all gyms
#         Gym.all
#   - Get a list of all memberships at a specific gym
#         Gym#memberships
#   - Get a list of all the lifters that have a membership to a specific gym
#         Gym#lifters
#   - Get a list of the names of all lifters that have a membership to that gym
#         Gym#lifters_names
#   - Get the combined lift_total of every lifter who has a membership to that gym
#         Gym#lift_total
