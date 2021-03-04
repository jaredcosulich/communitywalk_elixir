defmodule FoweTemplate.Email do
  import Bamboo.Email

  def generic(options) do
    new_email(options)
  end
end
