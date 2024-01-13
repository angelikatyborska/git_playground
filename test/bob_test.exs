defmodule BobTest do
  use ExUnit.Case

  @tag :ignore
  test "stating something" do
    assert Bob.reply("Tom-ay-to, tom-aaaah-to.") == "Whatever."
  end

  @tag :ignore
  test "shouting" do
    assert Bob.reply("WATCH OUT!") == "Whoa, chill out!"
  end

  @tag :ignore
  test "shouting gibberish" do
    assert Bob.reply("FCECDFCAAB") == "Whoa, chill out!"
  end

  @tag :ignore
  test "asking a question" do
    assert Bob.reply("Does this cryogenic chamber make me look fat?") == "Sure."
  end

  @tag :ignore
  test "asking a numeric question" do
    assert Bob.reply("You are, what, like 15?") == "Sure."
  end

  @tag :ignore
  test "asking gibberish" do
    assert Bob.reply("fffbbcbeab?") == "Sure."
  end

  @tag :ignore
  test "talking forcefully" do
    assert Bob.reply("Hi there!") == "Whatever."
  end

  @tag :ignore
  test "using acronyms in regular speech" do
    assert Bob.reply("It's OK if you don't want to go to the DMV.") == "Whatever."
  end

  @tag :ignore
  test "talking in capitals" do
    assert Bob.reply("This Isn't Shouting!") == "Whatever."
  end

  @tag :ignore
  test "forceful question" do
    assert Bob.reply("WHAT'S GOING ON?") == "Calm down, I know what I'm doing!"
  end

  @tag :ignore
  test "asking in capitals" do
    assert Bob.reply("THIS ISN'T SHOUTING?") == "Calm down, I know what I'm doing!"
  end

  @tag :ignore
  test "shouting numbers" do
    assert Bob.reply("1, 2, 3 GO!") == "Whoa, chill out!"
  end

  @tag :ignore
  test "shouting with special characters" do
    assert Bob.reply("ZOMG THE %^*@#$(*^ ZOMBIES ARE COMING!!11!!1!") == "Whoa, chill out!"
  end

  @tag :ignore
  test "shouting with no exclamation mark" do
    assert Bob.reply("I HATE THE DENTIST") == "Whoa, chill out!"
  end

  @tag :ignore
  test "statement containing question mark" do
    assert Bob.reply("Ending with ? means a question.") == "Whatever."
  end

  @tag :ignore
  test "silence" do
    assert Bob.reply("") == "Fine. Be that way!"
  end

  @tag :ignore
  test "prolonged silence" do
    assert Bob.reply("  ") == "Fine. Be that way!"
  end

  @tag :ignore
  test "alternate silence" do
    assert Bob.reply("\t\t\t\t\t\t\t\t\t\t") == "Fine. Be that way!"
  end

  @tag :ignore
  test "only numbers" do
    assert Bob.reply("1, 2, 3") == "Whatever."
  end

  @tag :ignore
  test "multiple line question" do
    assert Bob.reply("\nDoes this cryogenic chamber make me look fat?\nNo.") == "Whatever."
  end

  @tag :ignore
  test "question with numbers" do
    assert Bob.reply("4?") == "Sure."
  end

  @tag :ignore
  test "non-letters with question" do
    assert Bob.reply(":) ?") == "Sure."
  end

  @tag :ignore
  test "prattling on" do
    assert Bob.reply("Wait! Hang on. Are you going to be OK?") == "Sure."
  end

  @tag :ignore
  test "starting with whitespace" do
    assert Bob.reply("         hmmmmmmm...") == "Whatever."
  end

  @tag :ignore
  test "ending with whitespace" do
    assert Bob.reply("Okay if like my  spacebar  quite a bit?   ") == "Sure."
  end

  @tag :ignore
  test "other whitespace" do
    assert Bob.reply("\n\r \t") == "Fine. Be that way!"
  end

  @tag :ignore
  test "non-question ending with whitespace" do
    assert Bob.reply("This is a statement ending with whitespace     ") == "Whatever."
  end

  @tag :ignore
  test "shouting in Russian" do
    assert Bob.reply("УХОДИ") == "Whoa, chill out!"
  end
end
