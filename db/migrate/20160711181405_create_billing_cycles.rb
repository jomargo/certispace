class CreateBillingCycles < ActiveRecord::Migration
  def change
    create_table :billing_cycles do |t|
      t.references :user, index: true, foreign_key: true
      t.references :plan, index: true, foreign_key: true
      t.date :date_issued
      t.integer :amount_issued

      t.timestamps null: false
    end
  end
end
