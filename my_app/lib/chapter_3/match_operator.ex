defmodule MyApp.Chapter_3.MatchOperator do

# 1.i.1 [{[a], _, _}, _] = [{[:quanterall], 2, 10}, 2]
# 1.i.2 {_, [_, {[a]}]} = {"hello", [10, {[:quanterall]}]}
# 1.i.3 [_, {_, [_, [{a, _}]]}, _] = [1, {{1}, [1, [{:quanterall, "hello"}]]}, 10]
# 1.i.4 {_, [_, {_, _, [_, [_, a | _]]}]} = {[], [1, {{10}, 2, [1, [0, :quanterall, 35, 67]]}]}
# 1.i.5 {{a, _}, {b, _}, {c, _}, {d, [{e, _}, {f, _}]}, {g, _}, {h, _}} = {{:first_name, "Ivan"}, {:last_name, "Petrov"}, {:age, 43}, {:jobs, [{:mechanic, "The best workers OOD"}, {:doctor, "HealUs OOD"}]}, {:eye_color, "blue"}, {:hair_color, "brown"}}

# 1.ii.1 [{_, _, a}, _] = [{[:quanterall], 2, 10}, 2]
# 1.ii.2 {_, [a, _]} = {"hello", [10, {[:quanterall]}]}
# 1.ii.3 [_, _, a] = [1, {{1}, [1, [{:quanterall, "hello"}]]}, 10]
# 1.ii.4 {_, [_, {{a}, _, _}]} = {[], [1, {{10}, 2, [1, [0, :quanterall, 35, 67]]}]}
# 1.ii.5 {_, _, {_, a}, _, _, _} = {{:first_name, "Ivan"}, {:last_name, "Petrov"}, {:age, 43}, {:jobs, [{:mechanic, "The best workers OOD"}, {:doctor, "HealUs OOD"}]}, {:eye_color, "blue"}, {:hair_color, "brown"}}

# 1.iii.1 [{[a], _, b}, _] = [{[:quanterall], 2, 10}, 2]
# 1.iii.2 {_, [b, {[a]}]} = {"hello", [10, {[:quanterall]}]}
# 1.iii.3 [_, {_, [_, [{a, _}]]}, b] = [1, {{1}, [1, [{:quanterall, "hello"}]]}, 10]
# 1.iii.4 {_, [_, {{b}, _, [_, [_, a | _]]}]} = {[], [1, {{10}, 2, [1, [0, :quanterall, 35, 67]]}]}

# 1.iv {{_, a}, {_, b}, _, {_, [_, {_, c}]}, _, _} = {{:first_name, "Ivan"}, {:last_name, "Petrov"}, {:age, 43}, {:jobs, [{:mechanic, "The best workers OOD"}, {:doctor, "HealUs OOD"}]}, {:eye_color, "blue"}, {:hair_color, "brown"}}

  def fun1_1([_head1 | [_head2 | _tail]] = _list) do
    true
  end

  def fun1_2([_a, _b | _tail] = _list) do
    true
  end

  def fun2([_a, _b] = _list) do
    true
  end

  def fun3([head1 | [head1 | _tail]] = _list) do
    true
  end

  def fun4([a, a] = _list) do
    true
  end

  # def replace(string1, letter1, letter2) do ->works when letter1 and letter2 are strings
  #   letter_list = String.graphemes(string1)
  #   letter_list = Enum.map(letter_list, fn current_letter -> if (current_letter == letter1) do letter2 else current_letter end end)
  #   List.to_string(letter_list)
  # end

  def replace(string1, [char1], [char2]) do #works when char1 and char2 are char symbols

    func = fn current_char ->
      if (current_char == char1) do
        char2
      else
        current_char
      end
    end

    char_list = String.to_charlist(string1)
    char_list = Enum.map(char_list, func)
    List.to_string(char_list)

  end
end
