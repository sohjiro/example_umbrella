# Since configuration is shared in umbrella projects, this file
# should only configure the :example application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config

config :example, Example.Repo,
  username: "postgres",
  password: "postgres",
  database: "example_prod",
  pool_size: 15
