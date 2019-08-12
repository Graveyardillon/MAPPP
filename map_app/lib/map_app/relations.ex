defmodule MapApp.Relations do
  import Ecto.Query, warn: false
  alias MapApp.Repo

  #alias MapApp.Accounts
  #alias MapApp.Accounts.User
  alias MapApp.Relations.Relation

  def add_user(_conn, sourceUser, destinationUser) do
    input = Relation.changeset(%Relation{}, %{sourceID: sourceUser,
                      destinationID: destinationUser,
                      status: false})

    Repo.insert(input)
  end
end
