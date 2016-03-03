# OidMigrationIssue

Simple reproduction case for an issue I'm seeing with Ecto 2.0-beta

To reproduce the issue:

  * Install dependencies with `mix deps.get`
  * Create and migrate the database with `mix ecto.reset`

## Expected result

The command completes successfully and adds a single record to the databse.

## Actual result

The seeds fail:

    $ mix ecto.reset
    The database for OidMigrationIssue.Repo has been dropped.
    The database for OidMigrationIssue.Repo has been created.

    09:17:50.316 [info]  == Running OidMigrationIssue.Repo.Migrations.EnablePostgis.up/0 forward

    09:17:50.318 [info]  execute "CREATE EXTENSION IF NOT EXISTS postgis"

    09:17:51.508 [info]  == Migrated in 11.8s

    09:17:51.562 [info]  == Running OidMigrationIssue.Repo.Migrations.CreateGeoModel.change/0 forward

    09:17:51.563 [info]  create table geo_models

    09:17:51.568 [info]  == Migrated in 0.0s
    ** (ArgumentError) no extension found for oid `1838015`
        (postgrex) lib/postgrex/types.ex:298: Postgrex.Types.fetch!/2
        (postgrex) lib/postgrex/types.ex:215: Postgrex.Types.encoder/2
        (elixir) lib/enum.ex:1088: Enum."-map/2-lists^map/1-0-"/2
        (elixir) lib/enum.ex:1088: Enum."-map/2-lists^map/1-0-"/2
        (postgrex) lib/postgrex/query.ex:82: DBConnection.Query.Postgrex.Query.encoders/2
        (postgrex) lib/postgrex/query.ex:43: DBConnection.Query.Postgrex.Query.describe/2
        (db_connection) lib/db_connection.ex:884: DBConnection.describe_execute/5
        (db_connection) lib/db_connection.ex:966: anonymous fn/4 in DBConnection.run_meter/5
        (db_connection) lib/db_connection.ex:1009: DBConnection.run_begin/3
        (db_connection) lib/db_connection.ex:421: DBConnection.query/4
        (ecto) lib/ecto/adapters/sql.ex:380: Ecto.Adapters.SQL.struct/6
        (ecto) lib/ecto/repo/schema.ex:369: Ecto.Repo.Schema.apply/5
        (ecto) lib/ecto/repo/schema.ex:175: anonymous fn/11 in Ecto.Repo.Schema.do_insert/4
        (ecto) lib/ecto/repo/schema.ex:108: Ecto.Repo.Schema.insert!/4
        (elixir) lib/code.ex:363: Code.require_file/2
        (mix) lib/mix/tasks/run.ex:68: Mix.Tasks.Run.run/1
        (mix) lib/mix/task.ex:309: Mix.Task.run_alias/3
