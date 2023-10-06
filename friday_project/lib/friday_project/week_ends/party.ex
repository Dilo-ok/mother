defmodule FridayProject.WeekEnds.Party do
  use Ecto.Schema
  import Ecto.Changeset

  schema "parties" do
    field :name, :string
    field :date_party, :naive_datetime
    field :first_dev_experience_id, :id

    timestamps()
  end

  @doc false
  def changeset(party, attrs) do
    party
    |> cast(attrs, [:date_party, :name])
    |> validate_required([:date_party, :name])
  end
end
