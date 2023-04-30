defmodule LeapYearTest do
  use ExUnit.Case
  import LeapYear, only: [is_leap_year?: 1]

  test "Enter a valid input" do
    assert is_leap_year?("2000") == false
  end

  test "Year is no divisible by 4" do
    leap_year = is_leap_year?(2001)
    assert leap_year == false
  end

  test "Returns true as Year is divisible by 4 but no by 100" do
    leap_year = is_leap_year?(2020)
    assert leap_year == true
  end

  test "Returns false as Year is divisible by 4 and by 100 but no by 400" do
    leap_year = is_leap_year?(1900)
    assert leap_year == false
  end

  test "Returns true as Year is divisible by 4 and by 100 and by 400" do
    leap_year = is_leap_year?(2000)
    assert leap_year == true
  end
end
