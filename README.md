# Hello

## Installation

- `mix deps.get`

Running two app instances, with only one of them being a worker:

- `PORT=4005 mix phx.server`
- `WORKER_NODE=true PORT=4006 mix phx.server`

## How worker node is defined

On `runtime.exs`, the `queues` config is set to `[]` unless `WORKER_NODE` is `true`.

Based on sorentwo's suggestion: https://elixirforum.com/t/run-oban-web-without-executing-jobs/53449/2
