defmodule MapAppWeb.RelationController do
  use MapAppWeb, :controller

  alias MapApp.Relations
  alias MapApp.Accounts

  #require IEx

  def index(conn, _) do
    render(conn, "index.html")
  end

  def add(conn, %{"destinationID" => destinationID}) do
    current_user = Accounts.current_user(conn)
    #IEx.pry

    Relations.add_user(conn, current_user.id, destinationID)
    redirect(conn, to: "/add")
  end

end
