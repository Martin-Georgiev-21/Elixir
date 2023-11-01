defmodule MyApp.Chapter_7.GenServer do
  use GenServer

  def start() do
    # The first parameter is the module. __MODULE__ is alias for the name of the current module (i.e. MyServer)
    # Additionally we name the server with the name of the module, so we could refer to the GenServer by name instead of `pid`
    GenServer.start(__MODULE__, [], name: __MODULE__)
  end

  def greet(language) do
    GenServer.call(__MODULE__, {:greet, language})
  end

  def amount_of_greets(language) do
    GenServer.call(__MODULE__, {:count, language})
  end

  @impl true
  def init(_state) do
    # We start with 0 for each language. These number will be accumulated with each greeting call
    {:ok, %{english: 0, german: 0, spanish: 0, french: 0}}
  end

  @impl true
  def handle_call({:greet, language}, _from, state) do
    {result, new_state} =
      case language do
        :english -> {"hello", %{state | english: state.english + 1}}
        :german -> {"hallo", %{state | german: state.german + 1}}
        :spanish -> {"hola", %{state | spanish: state.spanish + 1}}
        :french -> {"bonjour", %{state | french: state.french + 1}}
      end

    {:reply, result, new_state}
  end

  @impl true
  def handle_call({:count, language}, _from, state) do
    count =
      case language do
        :english -> state.english
        :german -> state.german
        :spanish -> state.spanish
        :french -> state.french
      end

    {:reply, count, state}
  end
end
