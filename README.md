# Phoenix Swoosh Example

This is a Phoenix application demonstrating how to use [Swoosh](https://github.com/swoosh/swoosh) to send emails.

## How to use

```
# clone the repo
$ git clone https://github.com/swoosh/phoenix_swoosh_example
$ cd phoenix_swoosh_example/

# install dependencies
$ mix deps.get && npm install

# export the environment variables for the services you want to try
# have a look at `config/config.exs` to figure out which one you need if you are unsure
$ export SENDGRID_API_KEY=abcabcabc

# start the application
$ mix phoenix.server
```

You can now visit [http://localhost:4000]() from your browser to start sending emails.

## Learn more

  * Swoosh repository: https://github.com/swoosh/swoosh
  * Swoosh docs: https://hexdocs.pm/swoosh/
  * Phoenix Swoosh repository: https://github.com/swoosh/phoenix_swoosh
  * Phoenix Swoosh docs: https://hexdocs.pm/phoenix_swoosh/
