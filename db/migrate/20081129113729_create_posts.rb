class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |table|
      table.string :title
      table.text :body
      table.date :date
      
      table.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
