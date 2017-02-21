defmodule HelloPhoenix.Router do
  use HelloPhoenix.Web, :router

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

  scope "/", HelloPhoenix do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
		get "/hello", HelloController, :index
		get "/hello/:messenger", HelloController, :show
		get "/fib", FibController, :index
		get "/fibres", FibResController, :show
		get "/fact", FactController, :index
		get "/factres", FactResController, :show
		get "/cathy", CathyController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", HelloPhoenix do
  #   pipe_through :api
  # end
end
