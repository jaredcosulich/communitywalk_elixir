defmodule FoweTemplateWeb.FeatureCase do
  @moduledoc """
  This module defines the test case to be used by browser-based tests.
  """

  use ExUnit.CaseTemplate

  using do
    quote do
      use Wallaby.DSL
    end
  end

  setup tags do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(FoweTemplate.Repo)

    unless tags[:async] do
      Ecto.Adapters.SQL.Sandbox.mode(FoweTemplate.Repo, {:shared, self()})
    end

    metadata = Phoenix.Ecto.SQL.Sandbox.metadata_for(FoweTemplate.Repo, self())
    {:ok, session} = Wallaby.start_session(metadata: metadata)
    {:ok, session: session}
  end
end
