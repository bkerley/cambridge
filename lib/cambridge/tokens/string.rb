module Cambridge
  module Tokens
    class String
      def initialize(string)
        @string = string
      end

      def to_ruby
        "@stack.push #{@string.inspect}"
      end
    end
  end
end
