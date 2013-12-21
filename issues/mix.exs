defmodule Issues.Mixfile do
  use Mix.Project

  def project do
    [ app:     :issues,
      version: "0.0.1",
      name:    "Issues",
      source_url: "https://github.com/pragdave/issues",
      elixir:  "~> 0.11.1-dev",
      deps:    deps ]
  end

  # Configuration for the OTP application
  def application do
    [ 
      mod:          { Issues, [] },
      applications: [ :httpotion ] 
    ]
  end

  defp deps do
    [
      { :httpotion,  github: "myfreeweb/httpotion" },
      { :jsonex,     "2.0",   github: "marcelog/jsonex", tag: "2.0"  },
      { :ex_doc,     github: "elixir-lang/ex_doc" }
    ]
  end
end
