defmodule CodingExercisesTest do
  use ExUnit.Case
  doctest CodingExercises

  test "greets the world" do
    assert CodingExercises.hello() == :world
  end
end
