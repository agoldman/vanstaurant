class Menu < ActiveRecord::Base

    has_and_belongs_to_many :items
    scope :most_recent, -> { order("day DESC").first }
  
end