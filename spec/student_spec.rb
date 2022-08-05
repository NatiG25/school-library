require 'spec_helper'

describe Student do
  before :each do
    @student = Student.new(23, 'Nati', true, 'Aviation')
  end

  describe '#new' do
    it 'Creates a new Student instance' do
      @student.should be_an_instance_of Student
    end

    it 'check if the firs value is 23 years old' do
        @student.age.should eql 23
    end

    it 'check if name is nati' do
        @student.name.should eql 'Nati'
    end
  end
end
