class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.decimal :price, :precision => 15, :scale => 10

      t.timestamps
    end
  end
end
