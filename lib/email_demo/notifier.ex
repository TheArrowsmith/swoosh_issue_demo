defmodule EmailDemo.Notifier do
  import Swoosh.Email
  use Phoenix.Swoosh, view: EmailDemoWeb.NotifierView

  alias EmailDemo.Mailer

  def deliver do
    email =
      new()
      |> to("someone@example.com")
      |> from({"Someone Else", "someoneelse@example.com"})
      |> subject("Subject")
      |> render_body(:email)

    with {:ok, _metadata} <- Mailer.deliver(email) do
      {:ok, email}
    end
  end
end
