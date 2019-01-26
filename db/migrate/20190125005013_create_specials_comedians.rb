class CreateSpecialsComedians < ActiveRecord::Migration[5.2]
  def change
    create_table :comedians do |t|
      t.text :name
      t.integer :age
      t.text :city
      t.timestamps null: false
    end
  end
  def change
    create_table :specials do |t|
      t.text :name
      t.integer :length
      t.text :image
      t.integer :comedian_id
      t.timestamps null: false
    end
  end
end
