defmodule FridayProject.Repo.Migrations.CreateThirdDevExperiences do
  use Ecto.Migration

  def change do
    create table(:third_dev_experiences) do
      add :name, :string
      add :age, :integer

      timestamps()
    end
  end
end
