class RenameTypeFromVehicles < ActiveRecord::Migration[7.1]
  def change
    rename_column :vehicles, :type, :category
  end
end
