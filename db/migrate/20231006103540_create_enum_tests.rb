class CreateEnumTests < ActiveRecord::Migration[7.1]
  def change
    create_table :enum_tests do |t|
      t.string :entry
      t.string :single_value
      t.text :multiple_values
      t.integer :active_enum

      t.timestamps
    end
  end
end
