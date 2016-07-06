class CreateLongs < ActiveRecord::Migration
  def change
    create_table :longs do |t|

      t.string :title

      t.timestamps null: false
    end
  end
end
