require 'spec_helper'

describe Book do
  before :each do
    @book = Book.new('Atomic', 'James')
  end

  describe '#new' do
    it 'Creates a new book instance' do
      @book.should be_an_instance_of Book
    end
  end

  describe "#title" do
  it "returns the correct title" do
      @book.title.should eql "Atomic"
      end
  end

  describe '#author' do
  it'return book author' do
      @book.author.should eq "James"
      end
  end
end
