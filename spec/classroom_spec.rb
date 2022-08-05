require 'spec_helper'

describe Classroom do
  before :each do
    @classroom = Classroom.new('Mathematics')
  end

  describe '#new' do
    it 'Creates a new Classroom instance' do
      @classroom.should be_an_instance_of Classroom
    end

    it 'check if created class is Mathematics' do
      @classroom.label.should eql 'Mathematics'
    end
  end
end
