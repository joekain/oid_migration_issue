ExUnit.start

Mix.Task.run "ecto.create", ~w(-r OidMigrationIssue.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r OidMigrationIssue.Repo --quiet)
Ecto.Adapters.SQL.Sandbox.mode(OidMigrationIssue.Repo, :manual)
