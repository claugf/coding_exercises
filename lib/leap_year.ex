defmodule LeapYear do
  import Logger, only: [info: 1]

  @doc """
  Returns whether 'year' is a leap year.

  A leap year occurs:

  on every year that is evenly divisible by 4 rem4= LP
    except every year that is evenly divisible by 100 rem100= no LP
      unless the year is also evenly divisible by 400
  """
  def is_leap_year?(year) when is_integer(year) do
    cond do
      rem(year, 4) != 0 -> false
      rem(year, 100) != 0 -> true
      rem(year, 400) != 0 -> false
      true -> true
    end
  end

  def is_leap_year?(_year) do
    info("Please enter a valid year")
    false
  end
end
