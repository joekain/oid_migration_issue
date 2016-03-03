defmodule OidMigrationIssue.GeoModelTest do
  use OidMigrationIssue.ModelCase

  alias OidMigrationIssue.GeoModel

  @valid_attrs %{geom: %Geo.Point{coordinates: {30, -90}, srid: 4326}}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = GeoModel.changeset(%GeoModel{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = GeoModel.changeset(%GeoModel{}, @invalid_attrs)
    refute changeset.valid?
  end
end
