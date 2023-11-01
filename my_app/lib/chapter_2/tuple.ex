defmodule MyApp.Chapter_2.Tuple do

  def with_length(string1) do
    {string1, String.length(string1)}
  end

  def devide(number1, number2) do
    if(rem(number1, number2) == 0) do
      :ok
    else
      {:ERROR, rem(number1, number2)}
    end
  end

end
