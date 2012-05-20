%w{version tokenizer tokens scanner environment}.each do |f|
  require_relative File.join('cambridge', f)
end

module Cambridge
  def self.run_file(filename)
    contents = File.read filename
    run_string contents
  end

  def self.run_string(string)
    Environment.new.eval compile_string(string)
  end

  def self.compile_string(string)
    tokenizer = Cambridge::Tokenizer.new string
    tokenizer.to_ruby
  end
end
