require "slrfhm_palindrome/version"

module Slrfhm_Palindrome

  # Returns true for a palindrome, false otherwise.
  def palindrome?
    if processed_content.nil? || processed_content.empty?
      #puts "empty"
      false
    else
      processed_content == processed_content.reverse
    end 
  end

  private

    # Returns content for palindrome testing.
    def processed_content
       to_s.scan(/[a-z0-9]/i).join.downcase
    end
end

class String
  include Slrfhm_Palindrome
end

class Integer
  include Slrfhm_Palindrome
end
