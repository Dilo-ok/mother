defmodule FridayProject.WeekEnd.ThirdDevExperiences do
  use Ecto.Schema
  import Ecto.Changeset

  schema "third_dev_experiences" do
    field :name, :string
    field :age, :integer

    timestamps()
  end

  @doc false
  def changeset(third_dev_experiences, attrs) do
    third_dev_experiences
    |> cast(attrs, [:name, :age])
    |> validate_required([:name, :age])
  end
end
