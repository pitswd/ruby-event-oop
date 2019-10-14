require 'pry'

class User
  attr_accessor :email, :age
  @@all_user = []

  def initialize(email_to_save, age_to_save)
    @email = email_to_save
    @age = age_to_save
    @@all_user << self
  end

  def self.all
      return @@all_user
  end
  

end
