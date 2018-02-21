class RenameColumnNameInBank < ActiveRecord::Migration[5.1]
  def change
  	rename_column :banks , :account , :account_number
  end
end
