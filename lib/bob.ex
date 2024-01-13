defmodule Bob do
  @spec reply(String.t()) :: String.t()
  def reply(input) do
    input = String.trim(input)

    cond do
      silent?(input) -> "Fine. Be that way!"
      question?(input) -> "Sure."
      true -> "Whatever."
    end
  end

  defp silent?(input), do: "" == input
  defp question?(input), do: String.ends_with?(input, "?")
  defp letters?(input), do: Regex.match?(~r/\p{L}+/, input)
end
