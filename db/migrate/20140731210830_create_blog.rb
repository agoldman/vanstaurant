class CreateBlog < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :author
      t.text :content
      t.timestamps
    end
  end
end
