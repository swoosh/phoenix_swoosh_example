defmodule ExampleApplication.UserEmail do
  use Phoenix.Swoosh, view: ExampleApplication.Email.UserView, layout: {ExampleApplication.LayoutView, :email}

  def welcome(email_address) do
    new
    |> from("swoosh@elixirhq.com")
    |> to(email_address)
    |> subject("Welcome Example Email")
    |> render_body(:welcome)
  end
end
