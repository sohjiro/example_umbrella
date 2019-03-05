# Since configuration is shared in umbrella projects, this file
# should only configure the :example application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config

config :example,
  ecto_repos: [Example.Repo]

import_config "#{Mix.env()}.exs"
