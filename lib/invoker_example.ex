defmodule InvokerExample do
  use KinoTake.Invoker

  def success_case do
    user = %{id: 1, name: "hoge", email: "hoge@gmail.com"}

    invoke(UnitExample, :success_case, [locals: [user: user]]) do
      user = Map.put(user, :name, "huge")
      user = Map.put(user, :email, "huge@gmail.com")
      user
    end
  end

  def error_case do
    user = %{id: 1, name: "hoge", email: "hoge@gmail.com"}

    invoke(UnitExample, :error_case, [locals: [user: user]]) do
      user = Map.put(user, :name, "huge")
      user = Map.put(user, :email, "huge@gmail.com")
      user
    end
  end

  def non_locals_case do
    user = %{id: 1, name: "hoge", email: "hoge@gmail.com"}

    invoke(UnitExample, :non_locals_case) do
      user = Map.put(user, :name, "huge")
      user = Map.put(user, :email, "huge@gmail.com")
      user
    end
  end

  def module_not_load do
    user = %{id: 1, name: "hoge", email: "hoge@gmail.com"}

    invoke(Unit1, :unit1, [locals: [user: user]]) do
      user = Map.put(user, :name, "huge")
      user = Map.put(user, :email, "huge@gmail.com")
      user
    end
  end
end