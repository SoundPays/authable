use Mix.Config

config :authable, Authable.Repo,
  username: "mustafaturan",
  password: "123456",
  database: "authable_dev",
  hostname: "localhost",
  pool_size: 10
