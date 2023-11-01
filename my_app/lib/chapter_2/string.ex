defmodule MyApp.Chapter_2.String do

  def connect(string1, string2) do
    string1 <> " " <> string2
  end

  def connectWith(string1, string2, string3) do
    string1 <> " " <> string3 <> " " <> string2
  end
end
