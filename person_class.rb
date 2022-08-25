require './namable_class'
require './rental'
class Person < Nameable
  attr_accessor :name, :age
  attr_reader :id, :rental

  def initialize(age, name = 'unknown', parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals[]
  end

  def correct_name
    @name
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  def add_rental(_rental)
    new_rental = Rental.new(person, book, date)
    rentals << new_rental unless @rentals.include?(new_rental)
  end

  private

  def of_age?
    @age.to_i >= 18
  end
end
