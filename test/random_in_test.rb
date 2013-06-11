# coding: utf-8

require "test/unit"
require "random_in"

class RandomInTest < Test::Unit::TestCase

  # Should throw exception if n is equals to or more than "to"
  # when "may_repeat" param is false
  def test_throws_exeption
    # n is equals to "to"
    assert_raise(ArgumentError) do
      10.random_in(1,10,false)
    end

    # n is more than "to"
    assert_raise(ArgumentError) do
      10.random_in(1,9,false)
    end

    # "to" has to be more than "from"
    assert_raise(ArgumentError) do
      10.random_in(9,1,false)
    end    
  end

  # the return is correct
  # the resul set doesn't contain repeat values
  def test_return
    rs = 5.random_in(1,6,false)
    assert_equal(5, rs.length)
    assert_equal(Array, rs.class)
  end

  # Repeat and not repeat values in result set
  def test_repeat_and_no_repeat_values
    # no repeat values in result set
    rs1 = 15.random_in(1,16,false)
    assert_nil(rs1.uniq!)

    # repeat values exists in rs
    rs2 = 6.random_in(1,5,true)
    assert_operator(rs2.uniq!.length, :<=, rs2.length)
  end
end