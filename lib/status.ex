defmodule ElixirMaru.Router.Status do
   use Maru.Router

   get do
     json(conn, %{ hello: :world })
   end
 end
