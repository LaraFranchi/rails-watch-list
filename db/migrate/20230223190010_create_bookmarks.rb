class CreateBookmarks < ActiveRecord::Migration[7.0]
  def change
    create_table :bookmarks do |t|
      t.string :movie_id
      t.string :list_id
      t.text :comment

      t.timestamps
    end
  end
end
