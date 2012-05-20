module Cambridge
  class Tokenizer
    def initialize(source)
      @source = source
    end

    def to_ruby
      tokens.map(&:to_ruby).join("\n")
    end

    def tokens
      @tokens ||= scanner.parse @source
    end

    def scanner
      @scanner ||= Scanner.new
    end
  end
end
