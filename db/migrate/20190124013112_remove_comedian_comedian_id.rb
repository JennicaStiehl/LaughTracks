class RemoveComedianComedianId < ActiveRecord::Migration[5.2]
  def change
    remove_column :comedians, :comedian_id
  end
end
