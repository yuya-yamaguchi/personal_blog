class CreateBlogs < ActiveRecord::Migration[6.0]
  def change
    create_table :blogs do |t|
      t.references :user, null: false
      t.string :title, null: false
      t.text :body, null: false
      t.timestamps
    end
    add_index :blogs, :title
  end
end
