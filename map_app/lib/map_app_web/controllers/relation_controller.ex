defmodule MapAppWeb.RelationController do
  use MapAppWeb, :controller

  alias MapApp.Relations
  alias MapApp.Accounts

  # require IEx

  def add(conn, %{"id" => id}) do
    current_user = Accounts.current_user(conn)
    # IEx.pry

    Relations.add_user(current_user.id, id)
  end

end
