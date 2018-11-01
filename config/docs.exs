use Mix.Config

config :authable, Authable.Repo,
  username: "mustafaturan",
  password: "postgres",
  database: "authable_docs",
  hostname: "localhost",
  pool_size: 10
