require 'spec_helper'

describe Book do
  before :each do
    @book = Book.new('My Love Story', 'JJ Kariuki')
  end

  describe '#new' do
    it 'Takes two parameters and returns a Book object' do
      expect(@book).to be_instance_of Book
    end

    it 'Has the title My Love Story' do
      expect(@book.title).to eq 'My Love Story'
    end

    it 'Has the author JJ Kariuki' do
      expect(@book.author).to eq 'JJ Kariuki'
    end

    it 'Has rentals with method length' do
      expect(@book.rentals).to respond_to(:length)
    end

    it 'Can create new rentals' do
      person = Person.new(45, 'Jemimmah')
      @book.add_rentals(person, '2020/11/05')
      expect(@book.rentals.length).to eql 1
      expect(person.rentals.length).to be 1
    end
  end
end