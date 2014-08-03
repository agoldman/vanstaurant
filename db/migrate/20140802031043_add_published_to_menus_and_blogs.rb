class AddPublishedToMenusAndBlogs < ActiveRecord::Migration
  def change
    add_column :blogs, :published, :boolean
    add_column :menus, :published, :boolean
  end
end
