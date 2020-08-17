class CreateMatches < ActiveRecord::Migration[6.0]
  def change
    create_table :matches do |t|
      t.integer :user_id
      t.integer :cockroach_id
      t.integer :rating, default: false
      t.string :message, default: false

      t.timestamps
    end
  end
end
