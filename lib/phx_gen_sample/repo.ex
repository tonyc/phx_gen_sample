defmodule PhxGenSample.Repo do
  use Ecto.Repo,
    otp_app: :phx_gen_sample,
    adapter: Ecto.Adapters.Postgres
end
