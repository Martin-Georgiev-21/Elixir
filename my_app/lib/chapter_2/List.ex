defmodule MyApp.Chapter_2.List do

  def capitalize_first(string1) do
    List.to_string([String.upcase(hd(String.graphemes(string1))) | tl(String.graphemes(string1))])
  end

  def is_even(list) do
    if (rem(hd(list), 2) == 0) do
      true
    else
      false
    end
  end

  def multiply(list) do
    Enum.map(list, &(&1 * 5))
  end

  def only_even(list) do
    Enum.filter(list, &(rem(&1, 2) == 0))
  end

  def sum_list(list) do
    Enum.reduce(list, 0, &(&1 + &2))
  end

end
