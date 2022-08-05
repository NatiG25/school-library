require 'spec_helper'

describe Student do
    describe '#new' do
        before :each do
            @student=Student.new '34', 'name', true
        end
        it "Return new sudent object" do
            @student.should be_an_instance_of Student
        end
    end
end