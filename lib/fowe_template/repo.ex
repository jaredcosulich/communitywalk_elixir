defmodule Upward.Repo do
  use Ecto.Repo,
    otp_app: :upward,
    adapter: Ecto.Adapters.Postgres
end
