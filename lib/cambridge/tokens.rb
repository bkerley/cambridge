module Cambridge
  module Tokens
    class Base
      def de_codepoint(array_of_codepoints)
        return array_of_codepoints if array_of_codepoints.is_a? String
        array_of_codepoints.map(&:chr).join
      end
    end
  end
end

%w{string command}.each do |f|
  require_relative File.join('tokens', f)
end
