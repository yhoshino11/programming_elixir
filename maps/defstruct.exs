defmodule Subscriber do
  defstruct name: "", paid: false, over_18: true
end

defmodule Attendee do
  @derive Access
  defstruct name: "", paid: false, over_18: true

  def may_attend_after_party(attendee = %Attendee{}),         do: attendee.paid && attendee.over_18
  def print_vip_badge(%Attendee{name: name}) when name != "", do: IO.puts "Very cheap badge for #{name}"
  def print_vip_badge(%Attendee{}),                           do: raise "Missing name for badge"
end

defmodule Customer do
  defstruct name: "", company: ""
end

defmodule BugReport do
  defstruct owner: %{}, details: "", security: 1
end
