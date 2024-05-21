# Hello

## Installation

- `mix deps.get`

Running two app instances, with only one of them being a worker:

- `PORT=4005 iex -S mix phx.server`
- `WORKER_NODE=true PORT=4006 iex -S mix phx.server`

Then produce some jobs:

```elixir
%{name: "John Doe"} |> MyApp.Workers.Basic.new |> Oban.insert
```

The job just prints a `"Hello #{name}"`. You'll notice it'll only run on the worker app.

## How worker node is defined

On `runtime.exs`, the `queues` config is set to `[]` unless `WORKER_NODE` is `true`.

Based on sorentwo's suggestion: https://elixirforum.com/t/run-oban-web-without-executing-jobs/53449/2
