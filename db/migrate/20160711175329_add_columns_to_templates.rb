class AddColumnsToTemplates < ActiveRecord::Migration
  def change
    add_reference :templates, :base_template, index: true, foreign_key: true
  end
end
