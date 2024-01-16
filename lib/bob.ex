defmodule Bob do
  @spec reply(String.t()) :: String.t()
  def reply(input) do
    input = String.trim(input)

    cond do
      slt?(input) -> "Fine. Be that way!"
      shq?(input) -> "Calm down, I know what I'm doing!"
      q?(input) -> "Sure."
      sh?(input) -> "Whoa, chill out!"
      true -> "Whatever."
    end
  end

  defp slt?(input), do: "" == input
  defp sh?(input), do: input == String.upcase(input) && ltr?(input)
  defp q?(input), do: String.ends_with?(input, "?")
  defp shq?(input), do: sh?(input) && q?(input)
  defp ltr?(input), do: Regex.match?(~r/\p{L}+/, input)
end
