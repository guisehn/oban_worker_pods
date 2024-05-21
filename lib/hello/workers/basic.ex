defmodule MyApp.Workers.Basic do
  use Oban.Worker

  @impl Oban.Worker
  def perform(%Oban.Job{args: args}) do
    IO.puts("Hello #{args["name"]}")
    :ok
  end
end

# %{name: "John Doe"} |> MyApp.Workers.Basic.new |> Oban.insert
