# Temple Components

A trivial Phoenix LiveView app to try using [Temple](https://github.com/mhanberg/temple) 
directly inside [LiveComponents](https://hexdocs.pm/phoenix_live_view/Phoenix.LiveComponent.html).

There are two main files: [PageLive](lib/web/live/PageLive.ex) and [TimeComponent](lib/web/live/TimeComponent.ex). 
They each start with a `render` block that builds the markup, rather than having the markup in a 
different file. And instead of using EEX or Slime to render the markup, they use Temple which 
lets you write your markup in Elixir.