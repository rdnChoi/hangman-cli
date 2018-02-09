defmodule TextClient.Mover do
  alias TextClient.State

  def move(game) do
    { game_state, tally } = Hangman.make_move(game.game_service, game.guess)
    
    %State{ game | game_service: game_state, tally: tally }
  end
end