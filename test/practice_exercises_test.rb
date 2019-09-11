require_relative "test_helper"

describe "Practice Exercises" do
  describe "valid palindrome" do
    it "works for 1-word palindromes" do
      expect(is_palindrome("a")).must_equal true
      expect(is_palindrome("racecar")).must_equal true
      expect(is_palindrome("poop")).must_equal true
    end

    it "will return false for non-palindrome 1-word strings" do
      expect(is_palindrome("race")).must_equal false
      expect(is_palindrome("pasta")).must_equal false
    end

    it "works for empty strings" do
      expect(is_palindrome("")).must_equal true
    end

    it "will return true for long phrases with spaces and punctuation" do
      palindrome_word = "A man, a plan, a canal: Panama"

      expect(is_palindrome(palindrome_word)).must_equal true
    end

    it "will return false for non-palindrome long phrases with spaces and punctuation" do
      palindrome_word = "A man, a plan, a canal: Panam"
      expect(is_palindrome(palindrome_word)).must_equal false

    end
  end

  describe "Longest valid substring" do
    it "will work for the README strings" do
      strings = ["flower","flow","flight"]

      output = longest_prefix(strings)

      expect(output).must_equal "fl"
    end

    it "will work for the strings with the common prefix in the rear" do
      strings = ["flower","flow","flight", "fpastafl"]

      output = longest_prefix(strings)

      expect(output).must_equal "f"
    end

    it "will work for the README strings" do
      strings = ["dog","racecar","car"]

      output = longest_prefix(strings)

      expect(output).must_equal ""
    end
  end
end