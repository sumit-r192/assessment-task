class CreateRequestCallbacks < ActiveRecord::Migration[6.1]
  def change
    create_table :request_callbacks do |t|
      t.bigint :phone_number
      t.string :best_time_to_call
      t.integer :insurance_id

      t.timestamps
    end
  end
end
