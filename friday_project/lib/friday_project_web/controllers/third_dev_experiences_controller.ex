defmodule FridayProjectWeb.ThirdDevExperiencesController do
  use FridayProjectWeb, :controller

  alias FridayProject.WeekEnd
  alias FridayProject.WeekEnd.ThirdDevExperiences

  def index(conn, _params) do
    third_dev_experiences = WeekEnd.list_third_dev_experiences()
    render(conn, :index, third_dev_experiences: third_dev_experiences)
  end

  def new(conn, _params) do
    changeset = WeekEnd.change_third_dev_experiences(%ThirdDevExperiences{})
    render(conn, :new, changeset: changeset)
  end

  def create(conn, %{"third_dev_experiences" => third_dev_experiences_params}) do
    case WeekEnd.create_third_dev_experiences(third_dev_experiences_params) do
      {:ok, third_dev_experiences} ->
        conn
        |> put_flash(:info, "Third dev experiences created successfully.")
        |> redirect(to: ~p"/third_dev_experiences/#{third_dev_experiences}")

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, :new, changeset: changeset)
    end
  end

  def show(conn, %{"id" => id}) do
    third_dev_experiences = WeekEnd.get_third_dev_experiences!(id)
    render(conn, :show, third_dev_experiences: third_dev_experiences)
  end

  def edit(conn, %{"id" => id}) do
    third_dev_experiences = WeekEnd.get_third_dev_experiences!(id)
    changeset = WeekEnd.change_third_dev_experiences(third_dev_experiences)
    render(conn, :edit, third_dev_experiences: third_dev_experiences, changeset: changeset)
  end

  def update(conn, %{"id" => id, "third_dev_experiences" => third_dev_experiences_params}) do
    third_dev_experiences = WeekEnd.get_third_dev_experiences!(id)

    case WeekEnd.update_third_dev_experiences(third_dev_experiences, third_dev_experiences_params) do
      {:ok, third_dev_experiences} ->
        conn
        |> put_flash(:info, "Third dev experiences updated successfully.")
        |> redirect(to: ~p"/third_dev_experiences/#{third_dev_experiences}")

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, :edit, third_dev_experiences: third_dev_experiences, changeset: changeset)
    end
  end

  def delete(conn, %{"id" => id}) do
    third_dev_experiences = WeekEnd.get_third_dev_experiences!(id)
    {:ok, _third_dev_experiences} = WeekEnd.delete_third_dev_experiences(third_dev_experiences)

    conn
    |> put_flash(:info, "Third dev experiences deleted successfully.")
    |> redirect(to: ~p"/third_dev_experiences")
  end
end
