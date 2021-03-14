defmodule Web.TimeComponent do
  use Web, :live_component

  render do
    tr do
      td do: @format
      td do: @formatter.(@time)
    end
  end
end
