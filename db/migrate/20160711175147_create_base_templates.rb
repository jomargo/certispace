class CreateBaseTemplates < ActiveRecord::Migration
  def change
    create_table :base_templates do |t|
      t.string :html_file
      t.integer :background
      t.integer :logo
      t.integer :img_1
      t.integer :img_2
      t.integer :img_3
      t.integer :img_4
      t.integer :img_5
      t.integer :text_1
      t.integer :text_2
      t.integer :text_3
      t.integer :text_4
      t.integer :text_5
      t.integer :text_6
      t.integer :text_7
      t.integer :text_8
      t.integer :text_9
      t.integer :text_10

      t.timestamps null: false
    end
  end
end
