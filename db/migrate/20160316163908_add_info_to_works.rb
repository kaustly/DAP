class AddInfoToWorks < ActiveRecord::Migration
  def change
    add_column :works, :info, :string
  end
end
