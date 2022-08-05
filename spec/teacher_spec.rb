require 'spec_helper'

describe Teacher do
  before :each do
    @teacher = Teacher.new('Jarso', 'Math', 40)
  end

  describe '#new' do
    it 'Creates a new Teacher instance' do
      @teacher.should be_an_instance_of Teacher
    end

    it 'check if the first value is Jarso' do
        @teacher.name.should eql 'Jarso'
    end

    it 'check if specialization is Math' do
        @teacher.specialization.should eql 'Math'
    end
  end
end
