require 'spec_helper'

describe Solver do
  before :each do
    @solver = Solver.new
    @fact = Solver.factorial(4)
  end

  describe '#new' do
    it 'Create new instance of solver class' do
      @solver.should be_an_instance_of Solver
    end
  end

  describe '#factorial' do
    it 'it should returtn a number as a factorial result' do
      @fact.should eql 24
    end
  end
end
