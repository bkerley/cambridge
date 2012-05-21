module Cambridge
  module Tokens
    class Command < Base
      def initialize(name)
        @name = de_codepoint name
      end

      def to_ruby
        case @name
        when 'dump'
          "puts @stack.inspect"
        when 'prints'
          "puts @stack.pop"
        when 'printi'
          "puts @stack.pop.to_s"
        when 'add'
          "@stack.push(@stack.pop + @stack.pop)"
        when 'mult'
          "@stack.push(@stack.pop * @stack.pop)"
        end
      end
    end
  end
end
