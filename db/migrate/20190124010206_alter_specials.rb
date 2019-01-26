class AlterSpecials < ActiveRecord::Migration[5.2]
  def self.up
    add_column :comedians, :comedian_id, :integer
  end
end
