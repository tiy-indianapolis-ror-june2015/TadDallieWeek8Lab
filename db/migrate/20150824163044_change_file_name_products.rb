class ChangeFileNameProducts < ActiveRecord::Migration
  def change
    rename_column :products, :file, :file_id
  end
end
