class CreateResourceFields < ActiveRecord::Migration[6.1]
  def change
    create_table :resource_fields do |t|
      t.string :name
      t.integer :type

      t.timestamps
    end
  end
end
