use Mix.Config

config :authable, Authable.Repo,
  username: System.get_env()["DATABASE_POSTGRESQL_USERNAME"] || "postgres",
  password: System.get_env()["DATABASE_POSTGRESQL_PASSWORD"] || "",
  database: "authable_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

config :authable, app_authorization: Authable.Stub.AppAuthorization

config :logger, level: :warn
