use Mix.Config

config :conduit, Conduit.EventStore,
  registry: :distributed,
  serializer: Commanded.Serialization.JsonSerializer,
  username: "postgres",
  password: "postgres",
  database: "eventstore_dev",
  hostname: "localhost",
  pool_size: 10

config :conduit, event_stores: [Conduit.EventStore]
