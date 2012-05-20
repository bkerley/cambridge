%w{version tokenizer tokens scanner environment}.each do |f|
  require_relative File.join('cambridge', f)
end

module Cambridge
  def self.run_file(filename)
    @contents = File.read filename
    @tokenizer = Cambridge::Tokenizer.new @contents
    @ruby = @tokenizer.to_ruby
    Environment.new.eval @ruby
  end
end
