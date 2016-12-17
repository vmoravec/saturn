# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :saturn,
  ecto_repos: [Saturn.Repo]

# Configures the endpoint
config :saturn, Saturn.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "CRtTdyBIf3b+7COYwHQQi4yHmGDmf4loLuoyQ3vybeZMjUMscR/HejN1wO5rkxqP",
  render_errors: [view: Saturn.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Saturn.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

config :saturn, Saturn.Repo,
  adapter: Ecto.Adapters.Mnesia

config :ecto_mnesia, Saturn.Repo,
  adapter: Ecto.Adapters.Mnesia,
  host: {:system, :atom, "MNESIA_HOST", Kernel.node()},
  storage_type: {:system, :atom, "MNESIA_STORAGE_TYPE", :disc_copies}

