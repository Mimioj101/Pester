class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.string :bio
      t.string :img_url
      t.string :preference

      t.timestamps
    end
  end
end
