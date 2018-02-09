defmodule TextClient.Interact do
  alias TextClient.{State, Player, Summary, TextImages}

  def start() do
    welcome()
    Hangman.new_game()
    |> setup_state()
    |> Player.play()
  end

  defp setup_state(game) do
    %State{
      game_service: game,
      tally: Hangman.Game.tally(game),
    }
  end

  defp welcome() do
    Mix.Shell.IO.cmd("clear")
    IO.puts("Welcome to...")
    message = TextImages.image(:welcome)
      |> IO.puts()
  end

end