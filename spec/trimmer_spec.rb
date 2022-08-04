require 'spec_helper'

describe TrimmerDecorator do

    before :each do
        @person = Person.new(23, 'Pascal', true)
        @trimmerDecorator = TrimmerDecorator.new(@person)
    end

    describe '#new' do
    it "Creates a new TrimmerDecorator instance" do
        @trimmerDecorator.should be_an_instance_of TrimmerDecorator
        end
    end
end