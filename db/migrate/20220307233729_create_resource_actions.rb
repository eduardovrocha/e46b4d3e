class CreateResourceActions < ActiveRecord::Migration[6.1]
  def change
    create_table :resource_actions do |t|
      t.string :name
      t.string :class_identification

      t.timestamps
    end
  end
end
