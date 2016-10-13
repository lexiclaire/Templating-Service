defmodule Service.TemplaterController do
  use Service.Web, :controller
  import Poison
  alias Templater

  def render(conn, %{"template" => template, "data" => data}) do 
  	IO.inspect data
  	json(conn, Templater.render(template, data)) 
  end
end