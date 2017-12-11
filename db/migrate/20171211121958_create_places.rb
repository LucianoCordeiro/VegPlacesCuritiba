class CreatePlaces < ActiveRecord::Migration[5.1]
  def change
    create_table :places do |t|
      t.string :name
      t.string :modality
      t.string :description
      t.string :openinghours
      t.string :address
      t.string :sort
      t.string :facebookpage

      t.timestamps
    end
  end
end
