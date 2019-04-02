defmodule HttpCommunicatorTest do
  use ExUnit.Case
  doctest HttpCommunicator

  test "greets the world" do
    assert HttpCommunicator.hello() == :world
  end
end
