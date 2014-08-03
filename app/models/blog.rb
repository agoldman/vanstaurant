class Blog < ActiveRecord::Base
  scope :published, -> { where(published: true) }
end