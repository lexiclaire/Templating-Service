defmodule Service.TemplaterControllerTest do
	use ExUnit.Case

	require EEx

  test "When I give my app data and a template string it accepts it and renders a completed template string" do
    
    inputData = %{:name => "Jasper", :age => 8}
  	inputTemplate = "Hello <%= @name %>, you're <%= @age %>!"

    assert "Hello Jasper, you're 8!" == "?"
  end
end