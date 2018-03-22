defmodule ElixirMaru.Router.StatusTest do
  use ExUnit.Case
  use Maru.Test

  test "/status" do
    assert %{"status" => "ok"} = get("/status") |> json_response
  end
end
