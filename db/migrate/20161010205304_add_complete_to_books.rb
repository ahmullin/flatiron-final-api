class AddCompleteToBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :complete, :boolean, default: false
  end
end
