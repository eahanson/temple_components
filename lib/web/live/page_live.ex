defmodule Web.PageLive do
  use Web, :live_view

  render do
    div do
      "Hello world"
    end
  end

  @impl true
  def mount(_params, _session, socket) do
    {:ok, assign(socket, query: "", results: %{})}
  end
end
