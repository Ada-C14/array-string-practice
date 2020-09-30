
# Time Complexity: ?   O(n): two loops, but the relationship between these two loops is O(n) + O(n/2)
#                            so O(1.5n) --> O(n).
# Space Complexity: ?  O(n): the amount of space is depend on the length of input String in the first loop
#                            plus extra index variable.
def is_palindrome(string)
  # raise NotImplementedError, "Not implemented yet"
  return false if string.nil? 
    string = string.downcase.split(//).select {|char| (/[a-z0-9]/).match? (char)}.join

    index = 0
    while index <= (string.length / 2)
        return false if string[index] != string[string.length - 1 - index]
        index += 1
    end
    return true
end

# Time Complexity: ?    O(n*m): two loops, and the second loop is a nested loop.
#                       the relationship between these two loops is O(n) + O(n*m), 
#                       ie O(n): the length of the input array, O(m): the length of "shortest_word" in the input array,
#                       so O((m+1)n) --> O(n*m).
# Space Complexity: ?   O(n): the amount of space is depend on the length of "shortest_word" in the input array
#                       plus extra index variable.
def longest_prefix(strings)
  # raise NotImplementedError, "Not implemented yet"
  return "" if strings.nil? || strings.empty?
    shortest_word_for_longest_prefix = strings.min_by {|word| word.length }

    strings.each do |word|
        prefix = String.new
        index = 0
        while index < shortest_word_for_longest_prefix.length
            break if word[index] != shortest_word_for_longest_prefix[index]
            prefix += shortest_word_for_longest_prefix[index]
            index += 1
        end
        return "" if prefix.empty?
        shortest_word_for_longest_prefix = prefix
    end
    return shortest_word_for_longest_prefix
end

