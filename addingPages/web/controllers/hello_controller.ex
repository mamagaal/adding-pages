defmodule AddingPages.HelloController do
  use AddingPages.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def show(conn, %{"messenger" => messenger, "messengee" => messengee}) do
    render conn, "show.html", messenger: messenger, messengee: messengee
  end

  def show(conn, %{"messenger" => messenger}) do
    render conn, "show.html", messenger: messenger, messengee: "World"
  end

end
