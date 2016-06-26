defmodule ExampleApplication.PageControllerTest do
  use ExampleApplication.ConnCase

  test "GET /", %{conn: conn} do
    conn = get conn, "/"
    assert html_response(conn, 200) =~ "Phoenix Swoosh Example Application"
  end
end
