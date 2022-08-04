require 'spec_helper'

describe CapitalizeDecorator do
  before :each do
    @person = Person.new(23, 'Pascal', parent_perimission: true)
    @capitalize_decorator = CapitalizeDecorator.new(@person)
  end

  describe '#new' do
    it 'Creates a new CapitalizeDecorator instance' do
      @capitalize_decorator.should be_an_instance_of CapitalizeDecorator
    end
  end
end
