class Rental
  attr_accessor :person, :book, :date

  def initialize(person, book, date)
    @date = date
    @person = person
    @book = book
    person.rentals << self unless person.rentals.include?(self)
    book.rentals << self unless book.rentals.include?(self)
  end
end
