require './rental'
class Book
  attr_accessor :title, :author
  attr_reader :rental

  def initialize(title, author)
    @title = title
    @author = author
    @rentals[]
  end

  def add_rental(_rental)
    new_rental = Rental.new(person, book, date)
    rentals << new_rental unless @rentals.include?(new_rental)
  end
end
