defmodule UnitExample do
  use KinoTake.Unit

  active_if [user: user] do
    user.id == 1
  end

  function(:success_case, [user: user]) do
    user = Map.put(user, :name, "success_case")
    user = Map.put(user, :email, "success_case@gmail.com")
    user
  end

  function(:error_case, [user: user]) do
    user = Map.put(user, :name, "error_case")
    user = Map.put(user, :email, "error_case@gmail.com")
    raise "Oops!"
    user
  end

  function(:non_locals_case) do
    1 + 2 + 3
  end
end