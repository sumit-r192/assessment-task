class CreateInsurances < ActiveRecord::Migration[6.1]
  def change
    create_table :insurances do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.bigint :assessment
      t.string :address_line
      t.string :city
      t.string :province
      t.integer :postal_code
      t.bigint :phone_number
      t.float :insurance_premium
      t.string :home_owenr_1
      t.string :home_owenr_2
      t.string :home_owenr_3
      t.string :referal_agent_name
      t.string :referal_agent_email
      t.string  :type_of_property
      t.integer :lot_number
      t.boolean :existing_homeowner, default: false
      t.boolean :bound_by_water, default: false
      t.boolean :water_or_sewer, default: false
      t.boolean :issued_to_client, default: false
      t.boolean :denied_to_client, default: false
      t.boolean :is_english, default: false
      t.boolean :is_french, default: false
      t.datetime :purchase_date
      t.text :notes
      t.string :property_address
      t.string :property_city
      t.bigint :property_zip

      t.timestamps
    end
  end
end
