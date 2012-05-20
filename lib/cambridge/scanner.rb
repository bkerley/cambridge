require_relative File.join('parser', 'scan')
module Cambridge
  class Scanner
    def initialize
      @parser = Parser::Scan.new
    end

    def parse(line)
      @line = line
      @parser.parse @line
    end
  end
end
