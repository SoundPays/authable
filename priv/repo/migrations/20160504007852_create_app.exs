defmodule Authable.Repo.Migrations.CreateApp do
  use Ecto.Migration

  def change do
    create table(:apps) do
      add(:scope, :string)
      add(:user_id, references(:users, on_delete: :delete_all))
      add(:client_id, references(:clients, on_delete: :delete_all))

      timestamps()
    end

    create(unique_index(:apps, [:user_id, :client_id]))
  end
end
