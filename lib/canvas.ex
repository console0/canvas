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

  def load_secret(_app,key) do
    # would be the for-real one where we get a val and return tuple
    {:error, "Secret not found: " <> key}
  end

  def get_secret(app,key) do
    load_secret(app,key) |> elem(1)
  end

  def get_secret!(app,key) do
    case load_secret(app,key) do
      {:ok, secret} -> secret
      {:error, message} -> raise RuntimeError, message: message
    end
  end
end
