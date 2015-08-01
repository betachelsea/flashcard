class CreateParagraphs < ActiveRecord::Migration
  def change
    create_table :paragraphs do |t|
      t.string :body, null: false
      t.string :ja_body, null: false

      t.timestamps null: false
    end

    add_index :paragraphs, :body, :unique => true
    add_index :paragraphs, :ja_body, :unique => true
  end
end
