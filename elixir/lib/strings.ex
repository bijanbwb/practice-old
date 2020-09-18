defmodule Strings do
  @moduledoc """
  Practice problems for working with strings.
  """

  @spec has_unique_characters(string :: String.t()) :: boolean()
  def has_unique_characters(string)

  def has_unique_characters(""), do: true

  def has_unique_characters(<<character::utf8>> <> rest) do
    if String.contains?(rest, <<character::utf8>>) do
      false
    else
      has_unique_characters(rest)
    end
  end

  def has_unique_characters(_string) do
    false
  end
end
