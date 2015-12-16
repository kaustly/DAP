class CreateDiggedWorks < ActiveRecord::Migration
  def change
    create_table :digged_works do |t|
      t.references :work
      t.references :user
      t.timestamps null: false
    end
  end
end
