%w{string command}.each do |f|
  require_relative File.join('tokens', f)
end
