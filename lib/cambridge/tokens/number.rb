module Cambridge
  module Tokens
    class Number < Base
      def initialize(string)
        @number = de_codepoint(string).to_i
      end

      def to_ruby
        "@stack.push #{@number.to_s}"
      end
    end
  end
end
