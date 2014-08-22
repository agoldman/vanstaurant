class Blog < ActiveRecord::Base
  scope :published, -> { where(published: true).order("created_at DESC") }
end