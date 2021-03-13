defmodule Web.LiveView do
  defmacro render(block) do
    quote do
      def render(var!(assigns)) do
        require Temple

        Temple.compile(unquote(Phoenix.LiveView.Engine), unquote(block))
      end
    end
  end
end
