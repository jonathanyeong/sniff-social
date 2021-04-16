# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :sniff_social,
  ecto_repos: [SniffSocial.Repo]

# Configures the endpoint
config :sniff_social, SniffSocialWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "/y/Ndwteqi9xA0aXqYqAftKdiNLLWdOiYQ8wXfrdiRfaMh9H87DaBh0nkU8kXghM",
  render_errors: [view: SniffSocialWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: SniffSocial.PubSub,
  live_view: [signing_salt: "KkphoFy/"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
