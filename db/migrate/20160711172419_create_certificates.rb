class CreateCertificates < ActiveRecord::Migration
  def change
    create_table :certificates do |t|
      t.references :user, index: true, foreign_key: true
      t.integer :students_count, default: 0
      t.hstore :tags
      t.timestamps null: false
    end
  end
end
