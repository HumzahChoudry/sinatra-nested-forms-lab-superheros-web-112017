class Hero 
  attr_accessor :name, :power, :bio

  def initialize(param)
    @name = param[:name]
    @power = param[:power]
    @bio = param[:bio]
  end
end
