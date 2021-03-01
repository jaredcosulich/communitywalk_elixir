defmodule FoweTemplateWeb.PageLive do
  @moduledoc """
  The front page.
  """

  use FoweTemplateWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket}
  end
end
