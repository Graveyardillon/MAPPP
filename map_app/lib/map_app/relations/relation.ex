defmodule MapApp.Relations.Relation do
  use Ecto.Schema
  import Ecto.Changeset

  schema "relation" do
    field :sourceID
    field :destinationID
    field :status, :boolean
  end

  #def changeset(relation, attrs) do
  #  relation
  #  |> cast(attrs, [:sourceID, :destinationID, :status])
  #  |> validate_required([:sourceID, :destinationID])
  #end
end
