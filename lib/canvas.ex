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

  def load_config_key(_app,key) do
    {:error, "Config key not found: " <> key}
  end

  def get_config_key(app,key) do
    case load_config_key(app,key) do
      {:ok, config} -> config
      {:error, _} -> nil
    end
  end

  def get_config_key!(app,key) do
    case load_config_key(app,key) do
      {:ok, config} -> config
      {:error, message} -> raise RuntimeError, message: message
    end
  end

  def load_secret(_app,key) do
    # would be the for-real one where we get a val and return tuple
    {:error, "Secret not found: " <> key}
  end

  def get_secret(app,key) do
    case load_secret(app,key) do
      {:ok, secret} -> secret
      {:error, _} -> nil
    end
  end

  def get_secret!(app,key) do
    case load_secret(app,key) do
      {:ok, secret} -> secret
      {:error, message} -> raise RuntimeError, message: message
    end
  end
end
