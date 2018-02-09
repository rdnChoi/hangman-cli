defmodule TextClient.State do
  
  defstruct(
    game_service: nil,
    tally:        nil,
    guess:        ""
  )

end

# Game Service
# defstruct(
#     turns_left:   7,
#     game_state:   :initializing,
#     letters:      [],
#     used:         MapSet.new()
#   )

# Tally
# %{
#   game_state: game.game_state,
#   turns_left: game.turns_left,
#   letters:    game.letters |> reveal_guessed(game.used)
# }