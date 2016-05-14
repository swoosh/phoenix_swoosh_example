# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :example_application, ExampleApplication.Endpoint,
  url: [host: "localhost"],
  root: Path.dirname(__DIR__),
  secret_key_base: "TY4LNIG+gBP9mD3fSrh8T0Dk1In0Mab4bMQ4JiTG1O4Ch/5XKnSrw2oraFXT5fKC",
  render_errors: [accepts: ~w(html json)],
  pubsub: [name: ExampleApplication.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :example_application, ExampleApplication.LocalMailer,
  adapter: Swoosh.Adapters.Local

config :example_application, ExampleApplication.MailgunMailer,
  adapter: Swoosh.Adapters.Mailgun,
  api_key: {:system, "MAILGUN_API_KEY"},
  domain: {:system, "MAILGUN_DOMAIN"}

config :example_application, ExampleApplication.SendgridMailer,
  adapter: Swoosh.Adapters.Sendgrid,
  api_key: {:system, "SENDGRID_API_KEY"}

config :example_application, ExampleApplication.PostmarkMailer,
  adapter: Swoosh.Adapters.Postmark,
  api_key: {:system, "POSTMARK_API_KEY"}

config :example_application, ExampleApplication.SMTPMailer,
  adapter: Swoosh.Adapters.SMTP,
  relay: {:system, "SMTP_RELAY"},
  username: {:system, "SMTP_USERNAME"},
  password: {:system, "SMTP_PASSWORD"},
  tls: :always,
  auth: :always


# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

# Configure phoenix generators
config :phoenix, :generators,
  migration: true,
  binary_id: false
