
class Pet
  attr_accessor :name, :type, :age, :fed
  def initialize(pet)
    # require 'pry'; binding.pry
    @name = pet[:name]
    @type = pet[:type]
    @age = pet[:age]
    @fed = false
  end

  def fed?
    fed
  end

  def feed
    fed = true
  end
end
