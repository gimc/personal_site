# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :personal_site,
  ecto_repos: [PersonalSite.Repo]

# Configures the endpoint
config :personal_site, PersonalSite.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "sgZXIxrse64BPQv6iVsL6e25aW9fz4DOX7laRw9d+0NHiCAF0m/P9ejLDCOOUMg0",
  render_errors: [view: PersonalSite.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PersonalSite.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
