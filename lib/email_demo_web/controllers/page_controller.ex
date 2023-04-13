defmodule EmailDemoWeb.PageController do
  use EmailDemoWeb, :controller

  def index(conn, _params) do
    EmailDemo.Notifier.deliver
    render(conn, "index.html")
  end
end
