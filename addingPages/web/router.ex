defmodule AddingPages.Router do
  use AddingPages.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", AddingPages do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/hello/:messenger/:messengee", HelloController, :show
    get "/hello/:messenger", HelloController, :show
    get "/hello", HelloController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", AddingPages do
  #   pipe_through :api
  # end
end
