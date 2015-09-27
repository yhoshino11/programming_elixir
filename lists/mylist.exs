defmodule MyList do
  def len([]),           do: 0
  def len([_head|tail]), do: 1 + len(tail)

  def square([]),          do: []
  def square([head|tail]), do: [head*head|square(tail)]

  def map([],_func),          do: []
  def map([head|tail], func), do: [func.(head)|map(tail, func)]

  def sum([], total),          do: total
  def sum([head|tail], total), do: sum(tail, head + total)

  def sum2(list), do: _sum2(list, 0)
  defp _sum2([], total), do: total
  defp _sum2([head|tail], total), do: _sum2(tail, head + total)

  def mapsum([],_func), do: 0
  def mapsum([head|tail], func), do: func.(head) + mapsum(tail, func)

  def span(from, to) when from + 1 == to, do: [from, to]
  def span(from, to) when from < to,  do: [from|span(from+1,to)]
end
