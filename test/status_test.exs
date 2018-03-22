defmodule ElixirMaru.Router.StatusTest do
  use Maru.Test
  use ExUnit.Case

  test "/status" do
    assert %{"status" => "ok"} = get("/status") |> json_response
  end
end
