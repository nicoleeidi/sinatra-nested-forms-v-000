class Pirate
  @@all=[]
  attr_accessor :name, :weight, :heigh
  def initialize(args)
    @name=args[:name]
    @weight=args[:weight]
    @height=args[:height]
    @@all << self
  end
  def self.all
    @@all
  end
end
