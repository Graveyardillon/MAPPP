defmodule MapApp.Accounts.Relation do
  use Ecto.Schema
  import Ecto.Changeset

  schema "relation" do
    field :sourceID, :string
    field :destinationID, :string
    field :status, :boolean
  end

  def changeset(relation, attrs) do
    relation
    |> cast(attrs, [:sourceID, :destinationID, :status])
    |> validate_required([:sourceID, :destinationID])
  end
end
