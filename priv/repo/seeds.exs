# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     OidMigrationIssue.Repo.insert!(%OidMigrationIssue.SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias OidMigrationIssue.{Repo, GeoModel}

%GeoModel{}
|> GeoModel.changeset(%{geom: %Geo.Point{coordinates: {30, -90}, srid: 4326}})
|> Repo.insert!
