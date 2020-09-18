defmodule StringsTest do
  use ExUnit.Case

  describe "has_unique_characters/1" do
    test "returns true for a string containing unique characters" do
      assert Strings.has_unique_characters("hi")
    end

    test "returns false for a string containing duplicate characters" do
      refute Strings.has_unique_characters("hello")
    end

    test "returns true for an empty string" do
      assert Strings.has_unique_characters("")
    end
  end
end
