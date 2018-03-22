defmodule ElixirMaru.Router.Status do
  use Maru.Router
  require Logger

  get "/status" do
    Logger.info("Getting status :: OK")
    json(conn, %{ status: :ok })
  end
 end
