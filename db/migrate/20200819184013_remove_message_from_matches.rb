class RemoveMessageFromMatches < ActiveRecord::Migration[6.0]
  def change
    remove_column :matches, :message, :string
    remove_column :matches, :rating, :integer
  end
end
