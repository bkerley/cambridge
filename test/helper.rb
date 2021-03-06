require 'shoulda-context'
require 'mocha'
require 'minitest/autorun'

require_relative File.join('..', 'lib', 'cambridge')

class CambridgeCase < MiniTest::Unit::TestCase
  include Shoulda::Context::Assertions
  include Shoulda::Context::InstanceMethods
  extend Shoulda::Context::ClassMethods
end
