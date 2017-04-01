defmodule Presence.Mixfile do
  use Mix.Project

  def project do
    [
      app: :presence,
      app: :excoveralls,
      version: "0.8.2",
      elixir: "~> 1.4",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps(),
      description: description(),
      package: package(),
      test_coverage: [tool: ExCoveralls],
      preferred_cli_env: [coveralls: :test]
    ]
  end

  def application, do: []

  defp deps do
    [
      {:mix_test_watch, "~> 0.3", only: :dev, runtime: false},
      {:credo, "~> 0.7", only: [:dev, :test]},
      {:junit_formatter, ">= 0.0.0"},
      {:excoveralls, "~> 0.6.3", only: :test},
      {:inch_ex, only: :docs},
      {:ex_unit_notifier, "~> 0.1", only: :test},
      {:earmark, ">= 1.2.0", only: :dev},
      {:ex_doc, "~> 0.15", only: :dev, runtime: false}
    ]
  end

  defp description do
    """
    This a small Elixir library to check if a value is blank or not.
    """
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README.md"],
      maintainers: ["Wilfrido T. Nuqui Jr."],
      licenses: ["MIT"],
      links: %{
        "GitHub" => "https://github.com/wnuqui/presence",
        "Docs" => "http://hexdocs.pm/presence"
      }
    ]
  end
end
