defmodule Example.Products.Product do
  use Ecto.Schema
  import Ecto.Changeset


  schema "products" do
    field :brand, :string
    field :description, :string
    field :image, :string
    field :name, :string
    field :stock, :integer
    field :unit_price, :float

    timestamps()
  end

  @doc false
  def changeset(product, attrs) do
    product
    |> cast(attrs, [:name, :brand, :description, :unit_price, :image, :stock])
    |> validate_required([:name, :brand, :description, :unit_price, :image, :stock])
  end
end
