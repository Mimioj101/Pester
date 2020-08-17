class CreateCockroaches < ActiveRecord::Migration[6.0]
  def change
    create_table :cockroaches do |t|
      t.string :name
      t.string :location
      t.string :species
      t.string :bio
      t.string :dowry
      t.string :img_url

      t.timestamps
    end
  end
end
