module Cambridge
  class Environment
    def initialize
      @stack = []
    end

    def eval(ruby)
      instance_eval ruby
    end
  end
end
