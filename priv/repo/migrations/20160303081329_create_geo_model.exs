defmodule OidMigrationIssue.Repo.Migrations.CreateGeoModel do
  use Ecto.Migration

  def change do
    create table(:geo_models) do
      add :geom, :geometry

      timestamps
    end

  end
end
