defmodule Conduit.App do
  use Commanded.Application,
    otp_app: :conduit,
    registry: Commanded.Registration.SwarmRegistry,
    event_store: [
      adapter: Commanded.EventStore.Adapters.EventStore,
      event_store: Conduit.EventStore
    ]

  router(BankRouter)
end
