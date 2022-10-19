class Facade

  def initialize(subsystem1, subsystem2)
    @subsystem1 = subsystem1
    @subsystem2 = subsystem2
  end

  def FacadeMethod
    puts "Hello!"
    @subsystem1.MethodOne
    @subsystem2.MethodTwo
  end
end

class SubSystem1
  def MethodOne
    puts("SubSystemOne! Ready!")
  end
end

class SubSystem2
  def MethodTwo
    puts("SubSystemTwo! Ready!")
  end
end

sys_1 = SubSystem1.new
sys_2 = SubSystem2.new

for_example = Facade.new(sys_1, sys_2)
for_example.FacadeMethod
