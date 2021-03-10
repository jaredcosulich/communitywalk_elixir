defmodule FoweTemplateWeb.PageLiveTest do
  use FoweTemplateWeb.ConnCase

  import Phoenix.LiveViewTest

  test "disconnected and connected render", %{conn: conn} do
    {:ok, page_live, disconnected_html} = live(conn, "/")
    assert disconnected_html =~ "Phoenix framework"
    assert render(page_live) =~ "Phoenix framework"
  end
end
