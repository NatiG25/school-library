require 'spec_helper'

describe Classroom do
  before :each do
    @classroom = Classroom.new('Mathematics')
  end

  describe '#new' do
    it 'Creates a new Classroom instance' do
      @classroom.should be_an_instance_of Classroom
    end
  end
end
