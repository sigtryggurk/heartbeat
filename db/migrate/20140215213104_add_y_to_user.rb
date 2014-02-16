class AddYToUser < ActiveRecord::Migration
  def change
    add_column :users, :y, :int
  end
end
