defmodule MapApp.Relations do
  import Ecto.Query, warn: false
  alias MapApp.Repo

  alias MapApp.Accounts
  alias MapApp.Accounts.User
  alias MapApp.Relations.Relation

  def add_user(sourceUser, destinationUser) do

    # Relation構造体をinsert()することでDB挿入
    Repo.insert(%Relation{sourceID: sourceUser,
                          destinationID: destinationUser,
                          status: false})
  end
end
