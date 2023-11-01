defmodule MyApp.Chapter_6.WorkWithLists do

  def number(list) do
    for element <- list, is_integer(element) or is_float(element) do
      element
    end
  end

  def pangram(string) do
    list = String.downcase(String.replace(string, ~r/[^a-zA-hZ]/, ""))
    only_letters = String.to_charlist(list)
    uniques = for n <- only_letters, uniq: true do n end
    if(Enum.count(uniques) == 26) do
      true
    else
      false
    end
  end

  def encrypt1(string) do
    list = String.to_charlist(string)
    Enum.map(list, fn letter ->
      if(letter <= 109 and letter >= 97) do
        letter + 13
      else
        if(letter >= 109 and letter <= 122) do
          letter - 13
        else
          letter
        end
      end
    end)
  end

  def encrypt2(string) do
    fun = fn letter ->
      if(letter <= 109 and letter >= 97) do
        letter + 13
      else
        if(letter >= 109 and letter <= 122) do
          letter - 13
        else
          letter
        end
      end
    end

    list = String.to_charlist(string)
    for letter <- list do fun.(letter) end
  end
end
