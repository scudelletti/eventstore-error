defmodule Conduit.MixProject do
  use Mix.Project

  def project do
    [
      app: :conduit,
      version: "0.1.0",
      elixir: "~> 1.9",
      config_path: "config/config.exs",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Conduit.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:jason, "~> 1.1"},
      {:commanded, "~> 1.0.0"},
      {:commanded_eventstore_adapter, "~> 1.0.0"},
      {:commanded_swarm_registry, "~> 1.0.0"},
      {:phoenix_pubsub, "~> 1.0"}
    ]
  end
end
