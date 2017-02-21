defmodule HelloPhoenix.CathyController do
  use HelloPhoenix.Web, :controller

  def index(conn, _params) do
    render conn, "cathy.html"
  end
end
