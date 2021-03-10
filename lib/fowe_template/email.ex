defmodule Upward.Email do
  @moduledoc """
  Functions to generate emails.
  """

  import Bamboo.Email

  def generic(options) do
    new_email(options)
  end
end
