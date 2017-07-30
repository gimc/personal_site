defmodule PersonalSite.PageController do
  use PersonalSite.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
