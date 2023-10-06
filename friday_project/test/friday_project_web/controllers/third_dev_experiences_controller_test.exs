defmodule FridayProjectWeb.ThirdDevExperiencesControllerTest do
  use FridayProjectWeb.ConnCase

  import FridayProject.WeekEndFixtures

  @create_attrs %{name: "some name", age: 42}
  @update_attrs %{name: "some updated name", age: 43}
  @invalid_attrs %{name: nil, age: nil}

  describe "index" do
    test "lists all third_dev_experiences", %{conn: conn} do
      conn = get(conn, ~p"/third_dev_experiences")
      assert html_response(conn, 200) =~ "Listing Third dev experiences"
    end
  end

  describe "new third_dev_experiences" do
    test "renders form", %{conn: conn} do
      conn = get(conn, ~p"/third_dev_experiences/new")
      assert html_response(conn, 200) =~ "New Third dev experiences"
    end
  end

  describe "create third_dev_experiences" do
    test "redirects to show when data is valid", %{conn: conn} do
      conn = post(conn, ~p"/third_dev_experiences", third_dev_experiences: @create_attrs)

      assert %{id: id} = redirected_params(conn)
      assert redirected_to(conn) == ~p"/third_dev_experiences/#{id}"

      conn = get(conn, ~p"/third_dev_experiences/#{id}")
      assert html_response(conn, 200) =~ "Third dev experiences #{id}"
    end

    test "renders errors when data is invalid", %{conn: conn} do
      conn = post(conn, ~p"/third_dev_experiences", third_dev_experiences: @invalid_attrs)
      assert html_response(conn, 200) =~ "New Third dev experiences"
    end
  end

  describe "edit third_dev_experiences" do
    setup [:create_third_dev_experiences]

    test "renders form for editing chosen third_dev_experiences", %{conn: conn, third_dev_experiences: third_dev_experiences} do
      conn = get(conn, ~p"/third_dev_experiences/#{third_dev_experiences}/edit")
      assert html_response(conn, 200) =~ "Edit Third dev experiences"
    end
  end

  describe "update third_dev_experiences" do
    setup [:create_third_dev_experiences]

    test "redirects when data is valid", %{conn: conn, third_dev_experiences: third_dev_experiences} do
      conn = put(conn, ~p"/third_dev_experiences/#{third_dev_experiences}", third_dev_experiences: @update_attrs)
      assert redirected_to(conn) == ~p"/third_dev_experiences/#{third_dev_experiences}"

      conn = get(conn, ~p"/third_dev_experiences/#{third_dev_experiences}")
      assert html_response(conn, 200) =~ "some updated name"
    end

    test "renders errors when data is invalid", %{conn: conn, third_dev_experiences: third_dev_experiences} do
      conn = put(conn, ~p"/third_dev_experiences/#{third_dev_experiences}", third_dev_experiences: @invalid_attrs)
      assert html_response(conn, 200) =~ "Edit Third dev experiences"
    end
  end

  describe "delete third_dev_experiences" do
    setup [:create_third_dev_experiences]

    test "deletes chosen third_dev_experiences", %{conn: conn, third_dev_experiences: third_dev_experiences} do
      conn = delete(conn, ~p"/third_dev_experiences/#{third_dev_experiences}")
      assert redirected_to(conn) == ~p"/third_dev_experiences"

      assert_error_sent 404, fn ->
        get(conn, ~p"/third_dev_experiences/#{third_dev_experiences}")
      end
    end
  end

  defp create_third_dev_experiences(_) do
    third_dev_experiences = third_dev_experiences_fixture()
    %{third_dev_experiences: third_dev_experiences}
  end
end
