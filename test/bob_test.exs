defmodule BobTest do
  use ExUnit.Case

  test "stating something" do
    assert Bob.reply("Tom-ay-to, tom-aaaah-to.") == "Whatever."
  end

  test "shouting" do
    assert Bob.reply("WATCH OUT!") == "Whoa, chill out!"
  end

  test "shouting gibberish" do
    assert Bob.reply("FCECDFCAAB") == "Whoa, chill out!"
  end

  test "asking a question" do
    assert Bob.reply("Does this cryogenic chamber make me look fat?") == "Sure."
  end

  test "asking a numeric question" do
    assert Bob.reply("You are, what, like 15?") == "Sure."
  end

  test "asking gibberish" do
    assert Bob.reply("fffbbcbeab?") == "Sure."
  end

  test "talking forcefully" do
    assert Bob.reply("Hi there!") == "Whatever."
  end

  test "using acronyms in regular speech" do
    assert Bob.reply("It's OK if you don't want to go to the DMV.") == "Whatever."
  end

  test "talking in capitals" do
    assert Bob.reply("This Isn't Shouting!") == "Whatever."
  end

  test "forceful question" do
    assert Bob.reply("WHAT'S GOING ON?") == "Calm down, I know what I'm doing!"
  end

  test "asking in capitals" do
    assert Bob.reply("THIS ISN'T SHOUTING?") == "Calm down, I know what I'm doing!"
  end

  test "shouting numbers" do
    assert Bob.reply("1, 2, 3 GO!") == "Whoa, chill out!"
  end

  test "shouting with special characters" do
    assert Bob.reply("ZOMG THE %^*@#$(*^ ZOMBIES ARE COMING!!11!!1!") == "Whoa, chill out!"
  end

  test "shouting with no exclamation mark" do
    assert Bob.reply("I HATE THE DENTIST") == "Whoa, chill out!"
  end

  test "statement containing question mark" do
    assert Bob.reply("Ending with ? means a question.") == "Whatever."
  end

  test "silence" do
    assert Bob.reply("") == "Fine. Be that way!"
  end

  test "prolonged silence" do
    assert Bob.reply("  ") == "Fine. Be that way!"
  end

  test "alternate silence" do
    assert Bob.reply("\t\t\t\t\t\t\t\t\t\t") == "Fine. Be that way!"
  end

  test "only numbers" do
    assert Bob.reply("1, 2, 3") == "Whatever."
  end

  test "multiple line question" do
    assert Bob.reply("\nDoes this cryogenic chamber make me look fat?\nNo.") == "Whatever."
  end

  test "question with numbers" do
    assert Bob.reply("4?") == "Sure."
  end

  test "non-letters with question" do
    assert Bob.reply(":) ?") == "Sure."
  end

  test "prattling on" do
    assert Bob.reply("Wait! Hang on. Are you going to be OK?") == "Sure."
  end

  test "starting with whitespace" do
    assert Bob.reply("         hmmmmmmm...") == "Whatever."
  end

  test "ending with whitespace" do
    assert Bob.reply("Okay if like my  spacebar  quite a bit?   ") == "Sure."
  end

  test "other whitespace" do
    assert Bob.reply("\n\r \t") == "Fine. Be that way!"
  end

  test "non-question ending with whitespace" do
    assert Bob.reply("This is a statement ending with whitespace     ") == "Whatever."
  end

  test "shouting in Russian" do
    assert Bob.reply("УХОДИ") == "Whoa, chill out!"
  end
end
