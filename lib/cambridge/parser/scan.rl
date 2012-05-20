%%{
  machine scanner;

  action _string { puts 'string start', line, data[0..p]; @mark_str = p }
  action string { puts 'string end', line, data[0..p]; @tokens << Tokens::String.new(data[@mark_str..p-1]) }

  action _command { puts 'command start', line, data[0..p]; @mark_cmd = p }
  action command { puts 'command end', line, data[0..p]; @tokens << Tokens::Command.new(data[@mark_cmd..p-1]) }

  SingleCharacter = any;

  StringComponent = SingleCharacter;

  String = ('"' any* '"') >_string %string;

  Command = (alpha alnum*) >_command %command;

  Token = String | Command;

  Program = Token (space+ Token)*;

  main := Program;
}%%

module Cambridge
  module Parser
    class Scan
      def initialize
        @tokens = []
        @num_stack = []
      end

      def parse(line)
        data = line.codepoints.to_a
        stack = []
        p = 0
        ts = 0
        te = 0
        act = 0
        eof = data.length
        %% write data;
        %% write init;
        %% write exec;
        return @tokens
      end

      def atos(a)
        a.map(&:chr).join
      end
    end
  end
end
