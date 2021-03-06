defmodule ElixirMaru do
 use Maru.Router

 plug Plug.Parsers,
   pass: ["*/*"],
   json_decoder: Poison,
   parsers: [:urlencoded, :json, :multipart]

 mount ElixirMaru.Router.Status

 rescue_from :all do
   conn
   |> put_status(500)
   |> text("Server Error")
 end
end
