class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :name,  null: false, default: "" 
      t.string :address, null: false, default: ""
      t.string :mail, null: false, default: ""
      t.string :phone

      t.timestamps
    end
  end
end
