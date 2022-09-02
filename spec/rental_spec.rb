require 'spec_helper'

describe Rental do
  before :each do
    @book = Book.new('My Love Story', 'JJ Kariuki')
    @person = Person.new(35)
    @rental = Rental.new(@person, @book, '2020/11/05')
  end
  describe '#new' do
    it 'rental Should be class of Rental' do
      expect(@rental).to be_instance_of Rental
    end

    it 'the rental book author and name should be JJ Kariuki and My Love Story' do
      expect(@rental.book.author).to eq 'JJ Kariuki'
      expect(@rental.book.title).to eq 'My Love Story'
    end

    it 'person should be an instance of Person' do
      expect(@rental.person).to be_instance_of Person
      expect(@rental.person.name).to eq 'Unknown'
      expect(@rental.person.age).to be 35
    end

    it 'book should be an instance of Book' do
      expect(@rental.book).to be_instance_of Book
    end

    it 'should have a rental' do
      expect(@rental.person.rentals.length).to be > 0
      expect(@rental.book.rentals.length).to be > 0
    end
  end
end
