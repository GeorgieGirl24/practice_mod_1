gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/pet'
require_relative '../lib/customer'
require_relative '../lib/groomer'

class CustomerTest < Minitest::Test
  def test_groomer_has_a_name
    groomer = Groomer.new('The Aqua Dog')

    assert_instance_of Groomer, groomer
  end

  def test_it_starts_with_no_customers
    groomer = Groomer.new('The Aqua Dog')

    assert_equal [], groomer.customers
  end

  def test_that_the_groomer_can_have_a_customer
    groomer = Groomer.new('The Aqua Dog')
    joel = Customer.new("Joel", 2)

    groomer << joel = Customer.new("Joel", 2)

    assert_equal [joel], groomer.customers
  end

  def test_the_groomer_can_have_multiple_customers
    groomer = Groomer.new('The Aqua Dog')
    joel = Customer.new("Joel", 2)
    stacy = Customer.new("Stacy", 1)
    ameen = Customer.new("Ameen", 3)

    groomer << joel = Customer.new("Joel", 2)
    groomer << stacy = Customer.new("Stacy", 1)
    groomer << ameen = Customer.new("Ameen", 3)

    assert_equal ["Joel", "Stacy", "Ameen"], groomer.customer_list
  end

  def test_it_can_count_the_type_of_animals
    groomer = Groomer.new('The Aqua Dog')
    samson = Pet.new({name: "Samson", type: :dog, age: 3})
    fido = Pet.new({name: "Fido", type: :dog, age: 11})
    stacy = Customer.new("Stacy", 1)
    stacy.adopt(samson)
    ameen = Customer.new("Ameen", 3)
    ameen.adopt(fido)
    monkey = Pet.new({name: "Monkey", type: :cat, age: 13})
    stacy.adopt(monkey)
    lucy = Pet.new({name: "Lucy", type: :cat})
    ameen.adopt(lucy)

    groomer << (stacy)
    groomer << (ameen)

    assert_equal 2, groomer.count_types_of_pets(:dog)
  end

  def test_it_can_list_of_outstanding_balances
    groomer = Groomer.new('The Aqua Dog')
    stacy = Customer.new("Stacy", 1)
    stacy.charge(15)
    ameen = Customer.new("Ameen", 3)

    groomer << (stacy)
    groomer << (ameen)

    assert_equal stacy, groomer.customers_outstanding_balance
  end
end
