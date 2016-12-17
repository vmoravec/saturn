defmodule Saturn.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :id, :integer
      add :name, :string
      add :email, :string

      add :inserted_at, :utc_datetime
      add :updated_at, :utc_datetime
    end

  end
end
