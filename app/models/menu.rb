class Menu < ActiveRecord::Base

    has_and_belongs_to_many :items
    scope :latest, -> { order("day DESC").first }

    #return true if the last stored Menu has a server date in the future
    def self.upcoming?
      menu = latest
      if menu.class == Menu && menu.day
        menu.day > DateTime.now  
      else
        nil
      end
    end
  
end