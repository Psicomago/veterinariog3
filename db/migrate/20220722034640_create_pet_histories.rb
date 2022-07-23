class CreatePetHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :pet_histories do |t|
      t.references :pet, foreign_key: true
      t.float :weight, null: false, default: 0
      t.float :height, null: false, default: 0
      t.string :diagnosis, null: false, default: ""

      t.timestamps
    end
  end
end
