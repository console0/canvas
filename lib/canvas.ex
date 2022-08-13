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

  def get_secret(_app,key) do
    {:error, "Secret not found: " <> key}
  end

  def get_secret!(app,key) do
    case get_secret(app,key) do
      {:ok, result} -> result
      {:error, message} -> raise RuntimeError, message: message
    end
  end
end
