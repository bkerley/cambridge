module Cambridge
  module Tokens
    class Command
      def initialize(name)
        @name = name
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
