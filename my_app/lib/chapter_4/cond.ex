defmodule MyApp.Chapter_4.Cond do

  def calculate(arg1, arg2) do
    cond do
      rem(arg1, 2) == 0 and rem(arg2, 2) == 0 -> arg1 + arg2
      rem(arg1, 2) == 0 -> arg1 * arg2
      rem(arg2, 2) == 0 -> arg1 / arg2
      true -> arg1 - arg2
    end
  end

end
