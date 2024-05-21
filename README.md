# Hello

## Installation

- `mix deps.get`

Running two app instances, with only one of them being a worker:

- `PORT=4005 mix phx.server`
- `WORKER_NODE=true PORT=4006 mix phx.server`
