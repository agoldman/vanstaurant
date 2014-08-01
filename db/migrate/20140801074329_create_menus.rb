class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :location
      t.date :day
      t.string :directions
      t.string :name
    end
  end
end
