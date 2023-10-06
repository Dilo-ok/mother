defmodule FridayProject.WeekEndTest do
  use FridayProject.DataCase

  alias FridayProject.WeekEnd

  describe "third_dev_experiences" do
    alias FridayProject.WeekEnd.ThirdDevExperiences

    import FridayProject.WeekEndFixtures

    @invalid_attrs %{name: nil, age: nil}

    test "list_third_dev_experiences/0 returns all third_dev_experiences" do
      third_dev_experiences = third_dev_experiences_fixture()
      assert WeekEnd.list_third_dev_experiences() == [third_dev_experiences]
    end

    test "get_third_dev_experiences!/1 returns the third_dev_experiences with given id" do
      third_dev_experiences = third_dev_experiences_fixture()
      assert WeekEnd.get_third_dev_experiences!(third_dev_experiences.id) == third_dev_experiences
    end

    test "create_third_dev_experiences/1 with valid data creates a third_dev_experiences" do
      valid_attrs = %{name: "some name", age: 42}

      assert {:ok, %ThirdDevExperiences{} = third_dev_experiences} = WeekEnd.create_third_dev_experiences(valid_attrs)
      assert third_dev_experiences.name == "some name"
      assert third_dev_experiences.age == 42
    end

    test "create_third_dev_experiences/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = WeekEnd.create_third_dev_experiences(@invalid_attrs)
    end

    test "update_third_dev_experiences/2 with valid data updates the third_dev_experiences" do
      third_dev_experiences = third_dev_experiences_fixture()
      update_attrs = %{name: "some updated name", age: 43}

      assert {:ok, %ThirdDevExperiences{} = third_dev_experiences} = WeekEnd.update_third_dev_experiences(third_dev_experiences, update_attrs)
      assert third_dev_experiences.name == "some updated name"
      assert third_dev_experiences.age == 43
    end

    test "update_third_dev_experiences/2 with invalid data returns error changeset" do
      third_dev_experiences = third_dev_experiences_fixture()
      assert {:error, %Ecto.Changeset{}} = WeekEnd.update_third_dev_experiences(third_dev_experiences, @invalid_attrs)
      assert third_dev_experiences == WeekEnd.get_third_dev_experiences!(third_dev_experiences.id)
    end

    test "delete_third_dev_experiences/1 deletes the third_dev_experiences" do
      third_dev_experiences = third_dev_experiences_fixture()
      assert {:ok, %ThirdDevExperiences{}} = WeekEnd.delete_third_dev_experiences(third_dev_experiences)
      assert_raise Ecto.NoResultsError, fn -> WeekEnd.get_third_dev_experiences!(third_dev_experiences.id) end
    end

    test "change_third_dev_experiences/1 returns a third_dev_experiences changeset" do
      third_dev_experiences = third_dev_experiences_fixture()
      assert %Ecto.Changeset{} = WeekEnd.change_third_dev_experiences(third_dev_experiences)
    end
  end
end
