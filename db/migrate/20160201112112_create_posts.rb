class CreatePosts < ActiveRecord::Migration
  def change
    create_table   :posts do |t|
      t.references :user, index: true
      t.integer    :points, default: 0
      t.string     :title
      t.text       :content
      t.timestamps
    end
  end
end
