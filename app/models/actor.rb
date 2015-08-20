require 'pry'
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end


  def list_roles

  characters.map do |character|
    "#{character.name} - #{character.show.name}"
  end.join("")
    # "#{characters.first.name} - #{shows.first.name}"

    #need name of character and name of the show they are on. actor knows about their characters through self.characters because now we have access to the method characters.this method will call an instance of actors which gives us list of all the characters
  end

end
