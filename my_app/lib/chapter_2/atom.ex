defmodule MyApp.Chapter_2.Atom do

  def convertStringIntoAtom(string1, string2) do
  String.to_atom(String.trim(string1) <> "_" <> String.trim(string2))
  end

end
