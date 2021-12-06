class CreateCats < ActiveRecord::Migration[6.0]
  def change
    create_table :cats do |t|
      t.string  :cat_name,  null: false 
      t.text    :feature,   null: false
      t.integer :age_id,    null: false
      t.integer :place_id,  null: false
      t.integer :vaccine_id, null: false
      t.integer :castration_id, null: false
      t.integer :sickness_id, null: false
      t.text    :memo
      t.string :contact_address,              null: false
      t.references  :user,           null: false, foreign_key: true


      t.timestamps
    end
  end
end
