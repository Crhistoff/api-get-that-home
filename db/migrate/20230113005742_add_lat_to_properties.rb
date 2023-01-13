class AddLatToProperties < ActiveRecord::Migration[7.0]
  def change
    add_column :properties, :lat, :string
  end
end
