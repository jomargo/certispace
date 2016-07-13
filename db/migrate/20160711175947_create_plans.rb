class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.integer :monthly_certs
      t.integer :price

      t.timestamps null: false
    end
  end
end
