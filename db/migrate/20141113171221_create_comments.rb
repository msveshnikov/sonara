class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :content
      t.integer :user_id
      t.integer :word_id

      t.timestamps
    end
    add_index :comments, [:word_id, :created_at]
  end
end
