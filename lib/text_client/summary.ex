defmodule TextClient.Summary do
  alias TextClient.TextImages

  def display(%{ tally: tally } = game) do
    IO.puts [
      "\n",
      "Word so far:     #{Enum.join(tally.letters, " ")}\n",
      "Guesses left:    #{tally.turns_left}\n",
      "Letters Guessed: #{tally.letters_guessed}"
    ]

    game
  end

  def print_to_screen(game_state, msg) do
    IO.puts(msg)
    TextImages.image(game_state)
      |> IO.puts()
  end

end