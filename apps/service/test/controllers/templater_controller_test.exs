defmodule Service.TemplaterControllerTest do
	use Service.ConnCase

	test "POST /api/render", %{conn: conn} do
		conn = post conn, "/api/render", [template: "Hello", data: %{}]
		assert json_response(conn, 200) =~ "Hello"
	end
end