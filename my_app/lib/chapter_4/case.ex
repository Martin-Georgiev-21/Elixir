defmodule MyApp.Chapter_4.Case do

  def calculate(arg1, arg2) do
    case {rem(arg1, 2), rem(arg2, 2)} do
      {0, 0} -> arg1 + arg2
      {0, 1} -> arg1 * arg2
      {1, 0} -> arg1 / arg2
      {1, 1} -> arg1 - arg2
      _ -> {:error, "Something wrong happened"}
    end
  end

  def language_hello(language) do
    case language do
      "spanish" -> "hello on Spanish"
      "english" -> "hello"
      "japanese" -> "hello on japanese"
      "french" -> "hello on french"
      n -> {:error, "Bad argument #{n}"}
    end
  end

  # def list_of_tuples(list_of_strings) do search(list_of_strings, []) end

  # def search([], list) do list end

  # def search(list_of_strings, list_of_tuples) do
  #   [head | tail] = List_of_strings

  #   if(list_of_tuples === []) do
  #     list_of_tuples = [{String.first(head), []}]
  #   end
  #   list_of_tuples(tail, list_of_tuples)
  # end
end
