class AddOgImageToBlogs < ActiveRecord::Migration
  def change
    add_column :blogs, :og_image, :string
  end
end
