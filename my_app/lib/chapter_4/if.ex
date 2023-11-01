defmodule MyApp.Chapter_4.If do

  def odd(number) do
    if(rem(number, 2)!= 0) do
      true
    else
      false
    end
  end

  def even(number) do
    if(rem(number, 2)== 0) do
      true
    else
      false
    end
  end

  def calculate(arg1, arg2) do

    if(rem(arg1, 2) == 0 and rem(arg2, 2) == 0) do
      arg1 + arg2
    else
      if(rem(arg1, 2) == 0) do
        arg1 * arg2
      else
        if(rem(arg2, 2) == 0) do
          arg1 / arg2
        else
          arg1 - arg2
        end
      end
    end
  end

end
