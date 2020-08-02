gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/pet'
require_relative '../lib/customer'

class CustomerTest < Minitest::Test
  def test_it_exsists
    joel = Customer.new("Joel", 2)

    assert_equal 'Joel', joel.name
  end

  # has a name
  def test_has_a_name
    # skip
    joel = Customer.new("Joel", 2)

    assert_equal 'Joel', joel.name
  end

  # has an id
  def test_has_an_id
    # skip
    joel = Customer.new("Joel", 2)

    assert_equal 2, joel.id
  end

  # has pets
  def test_can_have_pets
    # skip
    joel = Customer.new("Joel", 2)

    assert_equal [], joel.pets
  end

  # adpots pets
  def test_a_customer_can_adopt_a_pet
    # skip
    joel = Customer.new("Joel", 2)
    samson = Pet.new({name: "Samson", type: :dog, age: 3})

    joel.adopt(samson)
    joel.pets

    assert_equal ['Samson'], joel.list_of_pets
  end

  def test_a_customer_can_adopt_another_pet
    # skip
    joel = Customer.new("Joel", 2)
    samson = Pet.new({name: "Samson", type: :dog, age: 3})
    lucy = Pet.new({name: "Lucy", type: :cat, age: 12})

    joel.adopt(samson)
    joel.adopt(lucy)

    assert_equal ['Samson','Lucy'], joel.list_of_pets

  end
  def test_customer_starts_with_zero_outstanding_balance
    # skip
    joel = Customer.new("Joel", 2)

    assert_equal 0, joel.outstanding_balance
  end

  def test_that_a_customer_can_occur_a_charge
    # skip
    joel = Customer.new("Joel", 2)

    joel.charge(15)

    assert_equal 15, joel.outstanding_balance
  end

  def tests_that_a_customer_can_add_to_outstanding_balance
    skip
    joel = Customer.new("Joel", 2)

    joel.charge(15)
    joel.charge(7)

    assert_equal 22, joel.outstanding_balance
  end
end
  # starts with 0 outstanding balance
  # gets charged
  # has a current outstanding balance
