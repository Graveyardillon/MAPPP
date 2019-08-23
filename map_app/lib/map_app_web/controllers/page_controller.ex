defmodule MapAppWeb.PageController do
  use MapAppWeb, :controller

  def index(conn, _params) do
    # テストでmap表示
    render(conn, "index.html")
  end
end
