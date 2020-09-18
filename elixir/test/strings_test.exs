defmodule StringsTest do
  use ExUnit.Case
  use PropCheck

  describe "has_unique_characters/1" do
    test "returns true for a string containing unique characters" do
      assert Strings.has_unique_characters("hi")
      assert Strings.has_unique_characters("👋")
    end

    test "returns false for a string containing duplicate characters" do
      refute Strings.has_unique_characters("hello")
      refute Strings.has_unique_characters("👋👋👋")
      refute Strings.has_unique_characters("this sentence contains duplicate characters")
    end

    test "returns true for an empty string" do
      assert Strings.has_unique_characters("")
    end

    property "returns a boolean result for any string input" do
      forall value <- binary() do
        value
        |> Strings.has_unique_characters()
        |> is_boolean()
      end
    end
  end
end
