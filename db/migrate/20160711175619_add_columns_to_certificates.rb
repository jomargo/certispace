class AddColumnsToCertificates < ActiveRecord::Migration
  def change
    add_reference :certificates, :template, index: true, foreign_key: true
  end
end
