defmodule ExOauth2Provider.Schema.UUID do
  @moduledoc """
  This module will permit autogenerated UUID.
  """

  defmacro __using__(_) do
    quote do
      use Ecto.Schema
      @primary_key {:id, :binary_id, autogenerate: true}
      @foreign_key_type :binary_id
    end
  end
end