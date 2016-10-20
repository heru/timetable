defmodule TimetableBackend.PageController do
  use TimetableBackend.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
