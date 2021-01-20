defmodule Rumbl.User do
  use Rumbl.Web, :model

  # in the book params is :empty, with Ecto 2.0 it uses an empty map
  # with Ecto 2.2.8, it now causes an Ecto.CastError for :empty atom
  def changeset(model, params \\ %{}) do
    model
    |> cast(params, ~w(name username), [])
    |> validate_length(:username, min: 1, max: 20)
  end

  schema "users" do
    field :name, :string
    field :username, :string
    field :password, :string, virtual: true
    field :password_hash, :string

    timestamps()
  end
end
