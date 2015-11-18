class CreateDigs < ActiveRecord::Migration
  def change
    create_table :digs do |t|
      t.boolean :public
      t.string :media_type
      t.references :user, index: true, foreign_key: true
      t.references :work, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
