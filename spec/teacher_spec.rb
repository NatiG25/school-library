require 'spec_helper'

describe Teacher do
    describe '#new' do
        before :each do
            @teacher=Teacher.new '34', 'name', 'specializatiton'
        end
        it "Return new teacher object" do
            @teacher.should be_an_instance_of Teacher
        end
    end
end