defmodule UpwardWeb.PageLive do
  @moduledoc """
  The front page.
  """

  use UpwardWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket}
  end
end
