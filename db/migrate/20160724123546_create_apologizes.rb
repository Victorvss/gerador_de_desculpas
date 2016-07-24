class CreateApologizes < ActiveRecord::Migration
  def change
    create_table :apologizes do |t|
      t.string :apologize_image
      t.string :description
      t.integer :person_id

      t.timestamps null: false
    end
    add_index :apologizes, :person_id
  end
end
