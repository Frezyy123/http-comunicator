defmodule SwarmCommunicatorTest do
  use ExUnit.Case
  doctest SwarmCommunicator

  test "greets the world" do
    assert SwarmCommunicator.hello() == :world
  end
end
