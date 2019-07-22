defmodule MapAppWeb.UserView do
  use MapAppWeb, :view
  alias MapApp.Accounts
   def current_user(conn) do
     Accounts.current_user(conn)
   end
end
