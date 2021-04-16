defmodule SniffSocialWeb.PageController do
  use SniffSocialWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
