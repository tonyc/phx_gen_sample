# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phx_gen_sample,
  ecto_repos: [PhxGenSample.Repo]

# Configures the endpoint
config :phx_gen_sample, PhxGenSampleWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Kz9YkWcFXRm0Ld0NxAFBYf6LLmrvf7YQUlidEU22ZQFInekWbr57/Uz2e13fMsZi",
  render_errors: [view: PhxGenSampleWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: PhxGenSample.PubSub,
  live_view: [signing_salt: "oQovO9oS"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
