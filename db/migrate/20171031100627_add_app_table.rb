class AddAppTable < ActiveRecord::Migration[5.1]
  def change
    create_table :apps do |t|
      t.string :name
      t.string :slug, index: true
      t.integer :owner_id, index: true

      t.timestamps null: false
    end
  end
end
