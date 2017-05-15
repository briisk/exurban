defmodule ExUrban.Mixfile do
  use Mix.Project

  @description "Elixir wrapper for UrbanAirship API."

  def project do
    [
        app: :exurban,
        name: "exurban",
        version: "0.0.1-dev",
        elixir: "~> 1.4",
        deps: deps,
        package: package,
        description: @description,
        source_url: "https://github.com/tappsi/exurban"
    ]
  end

  def application do
    [applications: [:logger, :httpoison]]
  end

  defp deps do
    [
        {:httpoison, "~> 0.11"},
        {:jazz, "~> 0.2.1"}
    ]
  end

  defp package do
    [
        contributors: ["Ricardo Lanziano"],
        licenses: ["FreeBSD License"],
        links: %{"GitHub" => "https://github.com/tappsi/exurban"}
    ]
  end

end
