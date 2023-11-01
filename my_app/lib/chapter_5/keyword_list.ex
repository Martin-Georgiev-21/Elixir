defmodule MyApp.Chapter_5.KeywordList do

  # def func(word, options \\ []) do
  #   repeated = Keyword.get(options, :repeat, 1)
  #   upperOption = Keyword.get(options, :upper)
  #   firstLetter = String.at(word, 0)

  #   letter =
  #     case upperOption do
  #       true -> String.upcase(firstLetter)
  #       false -> String.downcase(firstLetter)
  #       _ -> firstLetter
  #     end

  #     rec(letter, repeated, [])
  # end

  # defp rec(_, 0 , 1), do: List.to_charlist(1)
  # defp rec(letter, repeated, 1), do: rec(letter, repeated - 1, [letter | 1])

end
