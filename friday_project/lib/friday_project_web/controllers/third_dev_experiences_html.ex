defmodule FridayProjectWeb.ThirdDevExperiencesHTML do
  use FridayProjectWeb, :html

  embed_templates "third_dev_experiences_html/*"

  @doc """
  Renders a third_dev_experiences form.
  """
  attr :changeset, Ecto.Changeset, required: true
  attr :action, :string, required: true

  def third_dev_experiences_form(assigns)
end
