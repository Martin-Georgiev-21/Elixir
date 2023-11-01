defmodule MyApp.Chapter_2.AnonymousFun do

  def dev do
    fn (a,b) -> a/b end
  end

  def ano_fn do
    fn (arg1, arg2) -> dev().(arg1, arg2) end
  end

  def currying() do
    fn fun -> fn (a) -> fn (b) -> fun.(a, b)end end end
  end

  def sum do
    fn (a, b) -> a + b end
   end
  #  Enum.map([1, 2, 3], &(&1 ** &1)) анонимни функции
end
