require_relative 'helper'

class TestHello < CambridgeCase
  context 'Hello World' do
    setup do
      @filename = File.join(File.dirname(__FILE__), 'fixtures', 'hello.cambridge')
    end

    should 'print to stdout' do
      $stdout.expects(:puts).with('Hello World')

      Cambridge.run_file @filename
    end
  end
end
