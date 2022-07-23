class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.references :client, foreign_key: true
      t.string :name, null: false, default: ""
      t.string :race, null: false, default: ""
      t.date :bird, null: false

      t.timestamps
    end
  end
end
