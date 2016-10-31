# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :tracker, Tracker.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "kEA6tnoMSL9VVKoZvESNzNR0MD9+FU1uXrEb1ADEvSkbAM6g2BPr7xktoA0ZGnXR",
  render_errors: [view: Tracker.ErrorView, accepts: ~w(json)],
  pubsub: [name: Tracker.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
