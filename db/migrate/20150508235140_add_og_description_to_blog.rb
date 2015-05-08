class AddOgDescriptionToBlog < ActiveRecord::Migration
  def change
    add_column :blogs, :og_description, :string
  end
end
