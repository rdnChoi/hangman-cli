defmodule TextClientTest do
  use ExUnit.Case
  doctest TextClient

  test "Game ends when we game_state = :won" do
   
    game = TextClient.Interact.play
   
    assert TextClient.hello() == :world
  end
end