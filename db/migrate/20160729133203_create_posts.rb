class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|

    	t.string :bucket

      t.timestamps null: false
    end
  end
end
