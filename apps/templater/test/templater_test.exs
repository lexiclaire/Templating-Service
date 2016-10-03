defmodule TemplaterTest do
  use ExUnit.Case
  doctest Templater

  require EEx

  test "When render function is called with a map and EEx template it returns a rendered string" do
  	inputData = %{:name => "Jasper", :age => 8}
  	inputTemplate = "Hello <%= @name %>, you're <%= @age %>!"

    assert "Hello Jasper, you're 8!" == Templater.render(inputData, inputTemplate)
  end
end
