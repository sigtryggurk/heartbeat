class AddXToUser < ActiveRecord::Migration
  def change
    add_column :users, :x, :int
  end
end
