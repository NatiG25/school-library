require 'pp'
class Solver
  def self.factorial(nbr)
    nbr.negative? raise 'Sorry no negattive number allowed'
    if nbr.zero?
      1
    else
      nbr * factorial(nbr - 1)
    end
  end
end
