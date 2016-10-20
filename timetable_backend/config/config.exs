# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :timetable_backend,
  ecto_repos: [TimetableBackend.Repo]

# Configures the endpoint
config :timetable_backend, TimetableBackend.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "19wrNOuENaxnThMBHUS91InCRt4K2mMWRNxdJs+wSD1XVREXJMPkX7q7HzUDFQKJ",
  render_errors: [view: TimetableBackend.ErrorView, accepts: ~w(html json)],
  pubsub: [name: TimetableBackend.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
