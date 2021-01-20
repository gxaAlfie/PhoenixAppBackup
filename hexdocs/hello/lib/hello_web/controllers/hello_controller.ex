defmodule HelloWeb.HelloController do
  use HelloWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  # this will allow access to params as well as assign messenger
  # def show(conn, %{"messenger" => messenger} = params)
  # e.g. /hello/dude?again=11 => %{ messenger: "dude", again: "11" }
  def show(conn, %{"messenger" => messenger}) do
    render conn, "show.html", messenger: messenger
  end
end
