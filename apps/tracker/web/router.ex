defmodule Tracker.Router do
  use Tracker.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", Tracker do
    pipe_through :api
  end
end

# How to add the route(tracker address) that I need and be able to get variables out of that route. 