# Temple Components

A trivial Phoenix LiveView app to try using Temple directly inside LiveView Components.

There are two main files: PageLive and TimeComponent. They each start with a `render` block
that builds the markup, rather than having the markup in a different file. And instead of
using EEX or Slime to render the markup, they use Temple which lets you write your markup
in Elixir.