defmodule Presence.Mixfile do
  use Mix.Project

  def project do
    [
      app: :presence,
      app: :excoveralls,
      version: "0.5.0",
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

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:my_dep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:my_dep, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:mix_test_watch, "~> 0.3", only: :dev, runtime: false},
      {:credo, "~> 0.7", only: [:dev, :test]},
      {:excoveralls, "~> 0.6.3", only: :test},
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
