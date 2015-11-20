class CreateDiggedworks < ActiveRecord::Migration
  def change
    create_table :diggedworks do |t|
      t.references :user, index: true, foreign_key: true
      t.references :work, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
