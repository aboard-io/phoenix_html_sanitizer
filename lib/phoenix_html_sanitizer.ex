defmodule Phoenix.HTML.Sanitizer do
  @moduledoc """
  Helpers related to sanitizing user input that may contain HTML elements.
  """

  defmacro __using__(default_mode) when is_atom(default_mode) do
    quote do
      import Phoenix.HTML.Sanitizer.Helpers

      def sanitize(text), do: sanitize(text, unquote(default_mode))
    end
  end
end
