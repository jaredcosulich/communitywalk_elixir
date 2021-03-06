# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :fowe_template,
  ecto_repos: [FoweTemplate.Repo]

# Configures the endpoint
config :fowe_template, FoweTemplateWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "qvAV3WO2nQklv6+5lfZ+Prv5VCU7riC71MpZBDIG0Ruql2YMatx5CG3BwPa1PeB5",
  render_errors: [view: FoweTemplateWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: FoweTemplate.PubSub,
  live_view: [signing_salt: "RNeFXrKI"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :fowe_template, FoweTemplate.Mailer, adapter: Bamboo.LocalAdapter

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
