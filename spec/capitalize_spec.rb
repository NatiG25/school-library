require 'spec_helper'

describe CapitalizeDecorator do

    before :each do
        @person = Person.new(23, 'Pascal', true)
        @capitalizeDecorator = CapitalizeDecorator.new(@person)
    end

    describe '#new' do
    it "Creates a new CapitalizeDecorator instance" do
        @capitalizeDecorator.should be_an_instance_of CapitalizeDecorator
        end
    end
end