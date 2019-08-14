defmodule MapAppWeb.RelationController do
  use MapAppWeb, :controller

  alias MapApp.Relations
  alias MapApp.Accounts
  alias MapApp.Accounts.User

  require IEx

  def index(conn, _) do
    render(conn, "index.html")
  end

  def add(conn, %{"destinationID" => destinationID}) do
    current_user = Accounts.current_user(conn)
    #IEx.pry

    Relations.add_user(conn, current_user.id, destinationID)
    redirect(conn, to: "/add")
  end

  # incomingのgetリクエストに対して反応する関数incoming()
  def incoming(conn, _) do
    current_user = Accounts.current_user(conn)

    inc = Relations.get_incoming_users(conn, current_user.id)
    IEx.pry

    render(conn, "incoming.html", users: inc)
  end

  # incomingのpostリクエストに対して反応する関数accept()
  def accept(conn, %{"destinationID" => destinationID}) do
    current_user = Accounts.current_user(conn)

    Relations.accept_user(conn, current_user.id, destinationID)

    redirect(conn, to: "/incoming")
  end

end
