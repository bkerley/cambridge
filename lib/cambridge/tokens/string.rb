module Cambridge
  module Tokens
    class String < Base
      def initialize(string)
        @string = unquote de_codepoint string
      end

      def to_ruby
        "@stack.push #{@string.inspect}"
      end

      private
      def unquote(string)
        string.gsub(/^"/, '').gsub(/"$/, '')
      end
    end
  end
end
