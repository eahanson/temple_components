defmodule Web.PageLive do
  use Web, :live_view

  alias Web.TimeComponent

  render do
    h1 do: "#{@greeting} world!"

    table do
      tr do
        th do: "Format"
        th do: "Value"
      end

      for format <- ~w[to_date to_iso8601 to_string to_time to_unix]a do
        live_component(@socket, TimeComponent,
          time: @time,
          id: format,
          format: Atom.to_string(format),
          formatter: &apply(DateTime, format, [&1])
        )
      end
    end
  end

  @impl true
  def mount(_params, _session, socket) do
    if connected?(socket),
      do: :timer.send_interval(100, self(), :tick)

    socket |> assign(greeting: "Hello", time: DateTime.utc_now()) |> ok()
  end

  @impl true
  def handle_info(:tick, socket),
    do: socket |> assign(time: DateTime.utc_now()) |> noreply()

  # # #

  defp ok(socket), do: {:ok, socket}
  defp noreply(socket), do: {:noreply, socket}
end
