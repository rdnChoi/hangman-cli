defmodule TextClient.Interact do
  alias TextClient.{State, Player, TextImages}

  @hangman_server :hangman@ASUSUX305

  def start() do
    welcome()
    new_game()
    |> setup_state()
    |> Player.play()
  end

  defp setup_state(game) do
    %State{
      game_service: game,
      tally: Hangman.tally(game),
    }
  end

  defp new_game() do 
    Node.connect(@hangman_server)
    # rpc.call allows us to call functions in other (connected) nodes
    :rpc.call(@hangman_server, # Node, M, F, A 
      Hangman,
      :new_game,
      [])
  end

  defp welcome() do
    Mix.Shell.IO.cmd("clear")
    IO.puts("Welcome to...")
    TextImages.image(:welcome)
      |> IO.puts()
  end

end