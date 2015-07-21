class AddIndexWordToCards < ActiveRecord::Migration
  def change
    add_index :cards, :word, :unique => true
  end
end
