class DropMenusItemsTable < ActiveRecord::Migration
def up
    drop_table :menus_items
    create_table :items_menus do |t|
      t.belongs_to :menu
      t.belongs_to :item
    end
    
  end

  def down
    create_table :menus_items do |t|
      t.belongs_to :menu
      t.belongs_to :item
    end
    drop_table :items_menus
  end
end
