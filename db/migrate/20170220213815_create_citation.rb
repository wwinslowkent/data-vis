class CreateCitation < ActiveRecord::Migration[5.0]
  def change
    create_table :citations do |t|
      t.string :address, null: false
      t.string :parcel, null: false
      t.string :name, null: false
      t.string :code_number, null: false
      t.string :code_description, null: false
      t.string :date_cited, null: false
      t.string :date_corrected
      t.boolean :status, null: false
      t.string :case_number, null: false
    end
  end
end
