defmodule Example.Repo.Migrations.CreateProducts do
  use Ecto.Migration

  def change do
    create table(:products) do
      add :name, :string
      add :brand, :string
      add :description, :text
      add :unit_price, :float
      add :image, :string
      add :stock, :integer

      timestamps()
    end

  end
end
