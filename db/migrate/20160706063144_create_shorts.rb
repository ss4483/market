class CreateShorts < ActiveRecord::Migration
  def change
    create_table :shorts do |t|

      t.string :title

      t.timestamps null: false
    end
  end
end
