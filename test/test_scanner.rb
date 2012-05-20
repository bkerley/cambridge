require_relative 'helper'

class TestScanner < CambridgeCase
  include Cambridge::Tokens

  def self.should_parse(line, *sequence)
    context "the line #{line.inspect}" do
      setup do
        @parsed = nil
        @error = nil
        begin
          @parsed = @scanner.parse line
        rescue => e
          @error = e
        end
      end
      should "parse without error" do
        assert_nil @error, @error.inspect
        refute_nil @parsed
      end
      should "parse into #{sequence.inspect}" do
        puts '', @parsed.inspect, sequence.inspect, ''
        assert_equal sequence.length, @parsed.length
        @parsed.zip sequence do |result, klass|
          assert_kind_of klass, result
        end
      end
    end
  end

  context 'a scanner' do
    setup do
      @scanner = Cambridge::Scanner.new
    end

    should_parse '"hello"', Cambridge::Tokens::String
    should_parse 'prints', Command
    should_parse '"hello world"', Cambridge::Tokens::String
  end
end
