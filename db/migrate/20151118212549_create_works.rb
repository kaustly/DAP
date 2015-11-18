class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.boolean :public
      t.string :media_type
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
