defmodule FoweTemplate.Repo do
  use Ecto.Repo,
    otp_app: :fowe_template,
    adapter: Ecto.Adapters.Postgres
end
