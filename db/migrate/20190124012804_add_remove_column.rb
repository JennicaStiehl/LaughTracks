class AddRemoveColumn < ActiveRecord::Migration[5.2]
  def self.up
    add_column :specials, :comedian_id, :integer
  end

  def self.down
    remove_column :comedians, :comedian_id
  end
end
