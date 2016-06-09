defmodule AddingPages.PageController do
  use AddingPages.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
