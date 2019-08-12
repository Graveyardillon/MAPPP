defmodule MapApp.Relations.Relation do
  use Ecto.Schema
  import Ecto.Changeset

  schema "relation" do
    field :sourceID, :integer
    field :destinationID, :string
    field :status, :boolean
  end

  def changeset(relation, attrs) do
    relation
    |> cast(attrs, [:sourceID, :destinationID, :status])
  end
end
