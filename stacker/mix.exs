defmodule Stacker.Mixfile do
  use Mix.Project

  def project do
    [ app: :stacker,
      version: "0.0.1",
      elixir: "~> 0.10.2",
      deps: deps ]
  end

  # Configuration for the OTP application
  # This is the bit we've changed
  def application do
    [register: [:stacker],
     mod: {Stacker, [:hello]}] #create a default Stacker with a default stack containing :hello
  end

  # Returns the list of dependencies in the format:
  # { :foobar, "~> 0.1", git: "https://github.com/elixir-lang/foobar.git" }
  defp deps do
    []
  end
end
