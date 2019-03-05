# Since configuration is shared in umbrella projects, this file
# should only configure the :example_web application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config

# General application configuration
config :example_web,
  ecto_repos: [Example.Repo],
  generators: [context_app: :example]

# Configures the endpoint
config :example_web, ExampleWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "mAZX29dk3uUz/W7hUcDmivk1ZScF1pjyBHbMyqRa4yranNGMdf67l7aF+bDYe98N",
  render_errors: [view: ExampleWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ExampleWeb.PubSub, adapter: Phoenix.PubSub.PG2]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
