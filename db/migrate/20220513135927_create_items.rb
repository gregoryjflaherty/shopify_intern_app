class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.references :warehouse, foreign_key: true

      r.timestamps
    end
  end
end
