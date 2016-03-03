defmodule OidMigrationIssue.PageControllerTest do
  use OidMigrationIssue.ConnCase

  test "GET /", %{conn: conn} do
    conn = get conn, "/"
    assert html_response(conn, 200) =~ "Welcome to Phoenix!"
  end
end
