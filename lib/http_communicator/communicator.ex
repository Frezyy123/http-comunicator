defmodule SwarmCommunicator.Communicator do
  use GenServer

  def start_link() do
    GenServer.start_link(__MODULE__, [])
  end

  def init(_) do
    :global.register_name(:swarm_communicator, self())
    {:ok, %{}}
  end

  def handle_call({:get_workers,name}, _from, state) do
    {:reply, Swarm.members(name), state}
  end
end
