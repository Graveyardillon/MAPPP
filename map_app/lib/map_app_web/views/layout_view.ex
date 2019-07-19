defmodule MapAppWeb.LayoutView do
  use MapAppWeb, :view
  alias MapApp.Accounts.Guardian
  def current_user(conn) do
    Guardian.Plug.current_resource(conn)
  end
end
