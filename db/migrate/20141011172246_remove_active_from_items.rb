class RemoveActiveFromItems < ActiveRecord::Migration
  def change
    remove_column :items, :active, :boolean
  end
end
