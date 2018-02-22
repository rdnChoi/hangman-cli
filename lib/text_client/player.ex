defmodule TextClient.Player do
  alias TextClient.{Mover, Prompter, Summary, State, TextImages}

  # won, lost, good guess, bad guess, already used a letter, initializing, invalid guess
  def play(%State{tally: %{game_state: :won}} = game) do
    exit_with_message(:won, "Congratulations! You Won with #{game.tally.turns_left} turns left!")
  end
  
  def play(%State{tally: %{game_state: :lost}} = game) do
    show_word = 
      game.tally.word
      |> Enum.join()
      |> String.upcase

    exit_with_message(:lost, "The word was #{show_word}")
  end
  
  def play(%State{tally: %{game_state: :good_guess}} = game) do
    continue_with_message(game, "You found a MATCH!")
  end
  
  def play(%State{tally: %{game_state: :bad_guess}} = game) do
    continue_with_message(game, "Sorry, that letter doesn't match!")
  end
  
  def play(%State{tally: %{game_state: :already_used}} = game) do
    continue_with_message(game, "You've already used that letter!")
  end

  def play(game) do
    continue(game)
  end
  
  defp continue_with_message(game, msg) do
    Mix.Shell.IO.cmd("clear")
    IO.puts(msg)
    continue(game)
  end
  
  defp continue(game) do
    game
    |> Summary.display()
    |> print_image(game.tally.game_state)
    |> Prompter.accept_move()
    |> Mover.move()
    |> play
  end

  defp print_image(game, state) do
    IO.puts(TextImages.image(state))
    game
  end

  defp exit_with_message(game_state, msg) do
    Mix.Shell.IO.cmd("clear")
    Summary.print_to_screen(game_state, msg)
    Process.sleep(500)
    exit(:normal)
  end

end