class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.references :addressable, polymorphic: true, index: true
      t.string :line_1
      t.string :line_2
      t.string :city
      t.string :state_code
      t.string :zip_or_postcode
      t.string :country_code
      t.timestamps null: false
    end
  end
end
