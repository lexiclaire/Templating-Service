defmodule Service.TemplaterControllerTest do
  use ExUnit.Case
  use Plug.Test
  alias TemplaterController.Router

  test "Can I get a connection(?)" do
    response = conn(:post, "/render")
    assert response.status == 200
  end
end