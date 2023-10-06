defmodule FridayProject.WeekEnd do
  @moduledoc """
  The WeekEnd context.
  """

  import Ecto.Query, warn: false
  alias FridayProject.Repo

  alias FridayProject.WeekEnd.ThirdDevExperiences

  @doc """
  Returns the list of third_dev_experiences.

  ## Examples

      iex> list_third_dev_experiences()
      [%ThirdDevExperiences{}, ...]

  """
  def list_third_dev_experiences do
    Repo.all(ThirdDevExperiences)
  end

  @doc """
  Gets a single third_dev_experiences.

  Raises `Ecto.NoResultsError` if the Third dev experiences does not exist.

  ## Examples

      iex> get_third_dev_experiences!(123)
      %ThirdDevExperiences{}

      iex> get_third_dev_experiences!(456)
      ** (Ecto.NoResultsError)

  """
  def get_third_dev_experiences!(id), do: Repo.get!(ThirdDevExperiences, id)

  @doc """
  Creates a third_dev_experiences.

  ## Examples

      iex> create_third_dev_experiences(%{field: value})
      {:ok, %ThirdDevExperiences{}}

      iex> create_third_dev_experiences(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_third_dev_experiences(attrs \\ %{}) do
    %ThirdDevExperiences{}
    |> ThirdDevExperiences.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a third_dev_experiences.

  ## Examples

      iex> update_third_dev_experiences(third_dev_experiences, %{field: new_value})
      {:ok, %ThirdDevExperiences{}}

      iex> update_third_dev_experiences(third_dev_experiences, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_third_dev_experiences(%ThirdDevExperiences{} = third_dev_experiences, attrs) do
    third_dev_experiences
    |> ThirdDevExperiences.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a third_dev_experiences.

  ## Examples

      iex> delete_third_dev_experiences(third_dev_experiences)
      {:ok, %ThirdDevExperiences{}}

      iex> delete_third_dev_experiences(third_dev_experiences)
      {:error, %Ecto.Changeset{}}

  """
  def delete_third_dev_experiences(%ThirdDevExperiences{} = third_dev_experiences) do
    Repo.delete(third_dev_experiences)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking third_dev_experiences changes.

  ## Examples

      iex> change_third_dev_experiences(third_dev_experiences)
      %Ecto.Changeset{data: %ThirdDevExperiences{}}

  """
  def change_third_dev_experiences(%ThirdDevExperiences{} = third_dev_experiences, attrs \\ %{}) do
    ThirdDevExperiences.changeset(third_dev_experiences, attrs)
  end
end
