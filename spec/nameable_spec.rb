require 'spec_helper'

describe Nameable do
  before :each do
    @nameable = Nameable.new
  end

  describe '#new' do
    it 'Creates a new Nameable instance' do
      @nameable.should be_an_instance_of Nameable
    end
  end

  describe '#correct_name' do
  it 'checks if the method raises NotImplementedError' do
    expect {@nameable.correct_name}.to raise_error(NotImplementedError)
  end
 end
end
