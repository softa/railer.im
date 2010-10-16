class GemfileEval
  attr_reader :gems
  def initialize
    @gems = []
    @group = [:all]
  end
  def self.eval gemfile
    result = new
    Kernel.eval(gemfile, result.get_binding)
    result
  end
  def get_binding
    binding
  end
  def gem name, version=nil, options={}
    @gems << [name, version, @group]
  end
  def group *env
    @group = env
    yield
    @group = [:all]
  end
  def method_missing m, *ats
  end
end