defmodule MapApp.Repo.Migrations.MakeRelationship do
  use Ecto.Migration

  def change do
    create table(:relation) do
      field :sourceID, :string
      field :destinationID, :string
      field :status, :boolean
    end
  end
end
