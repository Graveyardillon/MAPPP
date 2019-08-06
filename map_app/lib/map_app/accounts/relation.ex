defmodule MapApp.Accounts.Relation do
  use Ecto.Schema
  import Ecto.Changeset

  schema "relation" do
    field :sourceID, :string
    field :destinationID, :string
    field :status, :boolean
  end

  
end
