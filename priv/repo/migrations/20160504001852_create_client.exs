defmodule Authable.Repo.Migrations.CreateClient do
  use Ecto.Migration

  def change do
    create table(:clients) do
      add(:name, :string)
      add(:secret, :string)
      add(:redirect_uri, :string)
      add(:settings, :jsonb)
      add(:priv_settings, :jsonb)
      add(:user_id, references(:users, on_delete: :delete_all))

      timestamps()
    end

    create(index(:clients, [:user_id]))
    create(unique_index(:clients, [:secret]))
    create(unique_index(:clients, [:name]))
  end
end
