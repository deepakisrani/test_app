class CreateValueNames < ActiveRecord::Migration[7.1]
  def change
    create_table :value_names do |t|
      t.string :name

      t.timestamps
    end
  end
end
