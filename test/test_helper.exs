ExUnit.start

Mix.Task.run "ecto.create", ~w(-r OidMigrationIssue.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r OidMigrationIssue.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(OidMigrationIssue.Repo)

