class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.string :name
      t.text :description
      t.string :address
      t.timestamps
      # t.datetime "created_at"
      # t.datetime "updated_at"
    end
  end
end
