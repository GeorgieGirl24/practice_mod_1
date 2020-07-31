gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/pet'

class PetTest < Minitest::Test
  def test_it_exsists
    samson = Pet.new({name: "Samson", type: :dog, age: 3})

    assert_equal 'Samson', samson.name
  end
  def test_it_has_a_name
    samson = Pet.new({name: "Samson", type: :dog, age: 3})

    assert_equal 'Samson', samson.name
  end

  def test_it_can_have_a_different_name
    fido = Pet.new({name: "Fido", type: :dog, age: 11})

    assert_equal 'Fido', fido.name
  end

  def test_it_has_an_age
    samson = Pet.new({name: "Samson", type: :dog, age: 3})

    assert_equal 3, samson.age
  end

  def test_it_has_a_type
    samson = Pet.new({name: "Samson", type: :dog, age: 3})
    assert_equal :dog, samson.type
  end

  def test_it_is_not_fed_to_start_with
    samson = Pet.new({name: "Samson", type: :dog, age: 3})

    refute samson.fed?
  end
end
