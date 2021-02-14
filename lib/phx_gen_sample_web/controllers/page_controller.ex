defmodule PhxGenSampleWeb.PageController do
  use PhxGenSampleWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
