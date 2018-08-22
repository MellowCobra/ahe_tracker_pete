# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :ahe_tracker_pete,
  ecto_repos: [AheTrackerPete.Repo]

# Configures the endpoint
config :ahe_tracker_pete, AheTrackerPeteWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ffxazHZsBfsDfGd24iqjK6drQsJBLHnu4gJC/dqDRLYSLGAkLEDtidlpg8mr5Tj5",
  render_errors: [view: AheTrackerPeteWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: AheTrackerPete.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix and Ecto
config :phoenix, :json_library, Jason
config :ecto, :json_library, Jason


# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
