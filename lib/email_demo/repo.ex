defmodule EmailDemo.Repo do
  use Ecto.Repo,
    otp_app: :email_demo,
    adapter: Ecto.Adapters.Postgres
end
