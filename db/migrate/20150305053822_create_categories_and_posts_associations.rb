class CreateCategoriesAndPostsAssociations < ActiveRecord::Migration
  def up
    remove_column :posts, :category_id

    create_table :categories_posts, id: false do |t|
      t.belongs_to :category, index: true
      t.belongs_to :post, index: true
    end
  end

  def down
    add_column :posts, :category_id, :integer
    drop_table :categories_posts
  end
end
