defmodule MyApp.Chapter_3.CaptureOperator do

  def power() do
    &(&1 ** 2)
  end

  def multiply() do
    &(&1 * &2)
  end

  def even() do
    &Enum.filter(&1, fn x -> rem(x, 2) == 0 end)
  end

  def integer_check() do
    &(if(is_integer(&1) === true) do {:ok, &1}; else {:error, &1} end)
  end
end
