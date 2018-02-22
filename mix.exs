defmodule TextClient.MixProject do
  use Mix.Project

  def project do
    [
      app: :text_client,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end
 
  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      included_applications: [ :hangman ], # load code for app but do NOT start it.
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      { :hangman, path: "../hangman" },
    ]
  end
end
