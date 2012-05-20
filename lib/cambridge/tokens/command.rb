module Cambridge
  module Tokens
    class Command < Base
      def initialize(name)
        @name = de_codepoint name
      end

      def to_ruby
        case @name
        when 'prints'
          "puts @stack.pop"
        end
      end
    end
  end
end
