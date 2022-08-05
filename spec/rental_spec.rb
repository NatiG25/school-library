require 'spec_helper'

describe Rental do
  before :each do
    @person = Person.new(23, 'Pascal', parent_perimission: true)
    @book = Book.new('Atomic Habits', 'James')
    @rental = Rental.new(@person, @book, '05/08/2022')
  end

  describe '#new' do
    it 'Creates a new Rental instance' do
      @rental.should be_an_instance_of Rental
    end
  end

  describe '#person' do
  it 'checks if person is the initailze value' do
    @rental.person.should eql @person
  end
end

  describe '#book' do
  it 'checks if book is the initailze value' do
    @rental.book.should eql @book
  end
 end

 describe '#date' do
 it 'checks if date is the initailze value' do
   @rental.date.should eql '05/08/2022'
 end
end

describe '#personAttr' do
it 'checks if inside the person attribute if there\'s the rental instance' do
  @rental.person.rentals[0].should eql @rental
 end
end

describe '#bookAttr' do
it 'checks if inside the book attribute if there\'s the rental instance' do
  @rental.book.rentals[0].should eql @rental
 end
end
end
