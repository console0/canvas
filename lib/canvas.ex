defmodule Canvas do
  @moduledoc """
  Documentation for `Canvas`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Canvas.hello()
      :world

  """
  def hello do
    :world
  end

  def get_config_key(key) do
    IO.inspect(key)
    :debug
  end

  def get_secret(key) do
    IO.inspect(key)
    :some_value
  end
end
