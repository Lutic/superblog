class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.string :title
      t.text :body
      t.date :date
      t.string :name
      t.references :post

      t.timestamps
    end
  end

  def self.down
    drop_table :comments
  end
end
