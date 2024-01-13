defmodule Bob do
  @spec reply(String.t()) :: String.t()
  def reply(input) do
    input = String.trim(input)

    cond do
      silent?(input) ->
        "Fine. Be that way!"

      shouting?(input) && question?(input)->
        "Calm down, I know what I'm doing!"

      question?(input) ->
        "Sure."

      shouting?(input) ->
        "Whoa, chill out!"

      true ->
        "Whatever."
    end
  end

  defp silent?(input), do: "" == input
  defp shouting?(input), do: input == String.upcase(input) && letters?(input)
  defp question?(input), do: String.ends_with?(input, "?")
  defp letters?(input), do: Regex.match?(~r/\p{L}+/, input)
end
