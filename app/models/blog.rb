class Blog < ActiveRecord::Base

  self.per_page = 5
  scope :published, ->  (page = 1){ where(published: true).paginate(:page => page).order("id DESC") }

end