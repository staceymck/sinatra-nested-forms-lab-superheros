class Team
  attr_accessor :name, :motto
  @@all = []

  def initialize(params)
    self.name = params[:name]
    self.motto = params[:motto]
    save
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
end