defmodule Saturn.PageController do
  use Saturn.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
