defmodule MapApp.Repo.Migrations.MakeRelationship do
  use Ecto.Migration

  def change do
    create table(:relation) do
      add :sourceID, :integer
      add :destinationID, :string
      add :status, :boolean
    end
  end
end
