class Person
  def initialize (name ="unknown", age, parent_permission=true)
    @id
    @name = name
    @age = age
    @parent_permission = parent_permission
  end
  def id 
    @id
  end
  def name
    @name
  end
  def age
    @age
  end
  def name (name)
    @name = name
  end
  def age(age)
    @age = age
  end
  def can_use_services?
    if is_of_age? || parent_permission
      return true
    else
      return false
  end
  private
  def is_of_age?
    if @age >= 18
      return true
    else
      return false
end 