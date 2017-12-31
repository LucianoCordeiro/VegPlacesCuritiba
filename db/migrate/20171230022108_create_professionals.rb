class CreateProfessionals < ActiveRecord::Migration[5.1]
  def change
    create_table :professionals do |t|
      t.string :name
      t.string :function
      t.string :phone_number
      t.string :email
      t.string :address

      t.timestamps
    end
  end
end
