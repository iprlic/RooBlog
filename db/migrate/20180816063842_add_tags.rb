class AddTags < ActiveRecord::Migration[5.2]
  def change
    create_table :tags do |t|
      t.string :title

      t.timestamps
    end

    create_table :article_tags do |t|
      t.references :article, foreign_key: true, index: true, null: false
      t.references :tag, foreign_key: true, index: true, null: false

      t.timestamps
    end
  end
end
