class Hero
  attr_accessor :name, :power, :bio
  @@all = []

  def initialize(args)
    self.name = args[:name]
    self.power = args[:power]
    self.bio = args[:bio]
    save
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end