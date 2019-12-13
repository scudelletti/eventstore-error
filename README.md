## Steps to reproduce the error:

### Create 3 Nodes

```
iex --name a@127.0.0.1 -S mix
iex --name b@127.0.0.1 -S mix
iex --name c@127.0.0.1 -S mix
```

### In Node C run:

```
Node.connect(:"a@127.0.0.1")
Node.connect(:"b@127.0.0.1")
:ok = Conduit.App.dispatch(%OpenBankAccount{account_number: "B#{to_string(:rand.uniform(100_000))}", initial_balance: 1_000})
```

This will log `[error] GenServer Conduit.EventStore.EventStore.Registration.DistributedForwarder terminating` in the console.


### Running the Dispatch Twice will raise another error:

```
:ok = Conduit.App.dispatch(%OpenBankAccount{account_number: "B#{to_string(:rand.uniform(100_000))}", initial_balance: 1_000})
```
