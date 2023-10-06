defmodule FridayProject.WeekEndFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `FridayProject.WeekEnd` context.
  """

  @doc """
  Generate a third_dev_experiences.
  """
  def third_dev_experiences_fixture(attrs \\ %{}) do
    {:ok, third_dev_experiences} =
      attrs
      |> Enum.into(%{
        name: "some name",
        age: 42
      })
      |> FridayProject.WeekEnd.create_third_dev_experiences()

    third_dev_experiences
  end
end
